import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/core/shared/widgets/toast.dart';
import 'package:ticket_bay/core/utils/private_api.dart';
import 'package:ticket_bay/features/auth/data/datasources/auth_token_provider.dart';

class NetworkInterceptor extends Interceptor {
  final Ref ref;
  final Dio dio;

  NetworkInterceptor(this.ref, this.dio);

  /// 🔐 Refresh control
  bool _isRefreshing = false;
  Completer<void>? _refreshCompleter;

  /// 🧵 Request queue
  final List<_QueuedRequest> _requestQueue = [];

  // ---------------------------------------------------------------------------
  // REQUEST
  // ---------------------------------------------------------------------------
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!isPrivateApi(options.path)) {
      handler.next(options);
      return;
    }

    final token = await ref.read(authTokenProvider.notifier).getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  // ---------------------------------------------------------------------------
  // ERROR
  // ---------------------------------------------------------------------------
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final is401 = err.response?.statusCode == 401;
    final isPrivate = isPrivateApi(err.requestOptions.path);

    if (!is401 || !isPrivate) {
      handler.next(err);
      return;
    }

    /// 🧵 Queue the failed request
    final completer = Completer<Response>();
    _requestQueue.add(
      _QueuedRequest(err.requestOptions, completer),
    );

    /// 🔐 If refresh already in progress → wait
    if (_isRefreshing) {
      try {
        final response = await completer.future;
        handler.resolve(response);
      } catch (e) {
        handler.reject(err);
      }
      return;
    }

    /// 🔐 Start refresh
    _isRefreshing = true;
    _refreshCompleter = Completer<void>();

    final refreshed = await _refreshToken();

    _isRefreshing = false;
    _refreshCompleter?.complete();

    if (!refreshed) {
      /// ❌ Refresh failed → reject all queued requests
      for (final req in _requestQueue) {
        req.completer.completeError(err);
      }
      _requestQueue.clear();
      handler.reject(err);
      return;
    }

    /// ✅ Refresh success → retry queued requests
    final newToken = await ref.read(authTokenProvider.notifier).getToken();

    for (final queued in _requestQueue) {
      try {
        queued.options.headers['Authorization'] = 'Bearer $newToken';
        final response = await dio.fetch(queued.options);
        queued.completer.complete(response);
      } catch (e) {
        queued.completer.completeError(e);
      }
    }

    _requestQueue.clear();

    /// Retry the original request
    final response = await completer.future;
    handler.resolve(response);
  }

  // ---------------------------------------------------------------------------
  // REFRESH TOKEN
  // ---------------------------------------------------------------------------
  Future<bool> _refreshToken() async {
    try {
      final response = await dio.post(Endpoints.refreshToken);

      final token = response.data['token'];
      if (token != null) {
        await ref.read(authTokenProvider.notifier).saveToken(token);
        return true;
      }
    } catch (_) {}

    /// ❌ Refresh failed → logout
    await ref.read(authTokenProvider.notifier).clear();
    return false;
  }
}

// -----------------------------------------------------------------------------
// QUEUED REQUEST MODEL
// -----------------------------------------------------------------------------
class _QueuedRequest {
  final RequestOptions options;
  final Completer<Response> completer;

  _QueuedRequest(this.options, this.completer);
}

class RetryOnConnectionChangeInterceptor extends Interceptor {
  final DioConnectivityRequestRetrier requestRetrier;

  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (!await _shouldRetry(err)) {
      handler.next(err);
      return;
    }
    try {
      var closeToast = errorToast(
        "Oops! No Internet",
        message: "Please check your network connection",
        duration: const Duration(seconds: 120),
        dissmissable: false,
      );
      //
      handler.resolve(
        await requestRetrier.scheduleRequestRetry(err.requestOptions),
      );
      closeToast.call();
    } catch (e) {
      handler.next(err);
    }
  }

  Future<bool> _shouldRetry(DioException err) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    var notConnected = connectivityResult == ConnectivityResult.none;
    return err.type == DioExceptionType.connectionError &&
        err.error != null &&
        err.error is SocketException &&
        notConnected;
  }
}

class DioConnectivityRequestRetrier {
  final Dio dio;
  final Connectivity connectivity;

  DioConnectivityRequestRetrier({
    required this.dio,
    required this.connectivity,
  });

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    StreamSubscription? streamSubscription;
    final responseCompleter = Completer<Response>();
    debugPrint("Scheduling a retry request on Connection back again");
    streamSubscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) async {
        // We're connected either to WiFi or mobile data
        if (connectivityResult != ConnectivityResult.none) {
          // Ensure that only one retry happens per connectivity change by cancelling the listener
          streamSubscription?.cancel();

          debugPrint(
              " ---- Making a new Request with the failed request's data ---- ");
          // Copy & paste the failed request's data into the new request
          responseCompleter.complete(
            dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              options: Options(
                method: requestOptions.method,
                contentType: requestOptions.contentType,
                headers: requestOptions.headers,
                extra: requestOptions.extra,
                sendTimeout: requestOptions.sendTimeout,
              ),
            ),
          );
        }
      },
    );
    return responseCompleter.future;
  }
}
