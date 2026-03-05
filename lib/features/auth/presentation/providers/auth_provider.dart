import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_bay/core/api/error_handler.dart';
import 'package:ticket_bay/core/shared/helpers/local_storage.dart';
import 'package:ticket_bay/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:ticket_bay/features/auth/domain/models/auth_model.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_token_provider.dart';

part 'auth_provider.g.dart';

@riverpod
Future<LoginResponseModel?> login(Ref ref,
    {required LoginRequestModel requestBody}) async {
  final result = await ref.read(authRepoProvider).login(requestBody);

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return null;
    },
    (data) => data,
  );
}

@riverpod
Future<RegisterResponseModel?> register(Ref ref,
    {required RegisterRequestModel requestBody}) async {
  final result = await ref.read(authRepoProvider).register(requestBody);

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return null;
    },
    (data) => data,
  );
}

@riverpod
Future<OTPVerificationResponseModel?> verifyOTP(Ref ref,
    {required OTPVerificationRequestModel requestBody}) async {
  final result = await ref.read(authRepoProvider).verifyOTP(requestBody);

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return null;
    },
    (data) => data,
  );
}

@riverpod
Future<UserData?> userDetails(Ref ref) async {
  final result = await ref.read(authRepoProvider).getUserDetails();

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return null;
    },
    (data) async {
      if (data != null) {
        final localDb = await ref.read(localStorageProvider.future);

        final userJson = data.toJson();
        final userString = jsonEncode(userJson);

        await localDb.writeData("loggedUser", userString);
      }

      return data;
    },
  );
}

@riverpod
Future<UserData?> savedUser(Ref ref) async {
  final localDb = await ref.read(localStorageProvider.future);
  final userString = await localDb.readData("loggedUser");

  if (userString == null) return null;

  final userMap = jsonDecode(userString);
  return UserData.fromJson(userMap);
}

@riverpod
Future<LogoutResponseModel?> logout(Ref ref) async {
  final result = await ref.read(authRepoProvider).logout();

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return null;
    },
    (data) async {
      if (data != null) {
        await ref.read(authTokenProvider.notifier).clear();

        final localDb = await ref.read(localStorageProvider.future);
        await localDb.deleteData("loggedUser");

        ref.invalidate(userDetailsProvider);
      }

      return data;
    },
  );
}
