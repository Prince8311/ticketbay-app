import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/api_handler.dart';
import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/core/shared/widgets/toast.dart';
import 'package:ticket_bay/features/auth/data/datasources/auth_api_service.dart';
import 'package:ticket_bay/features/auth/domain/models/auth_model.dart';
import 'package:ticket_bay/features/auth/domain/repositories/auth_repository.dart';

final authRepoProvider = Provider<AuthRepository>((ref) {
  return AuthRepoImpl(ref, ref.read(authApiServiceProvider));
});

class AuthRepoImpl extends AuthRepository {
  final AuthApiService _apiService;
  final Ref ref;

  AuthRepoImpl(this.ref, AuthApiService apiService) : _apiService = apiService;

  @override
  FutureEither<LoginResponseModel?> login(LoginRequestModel requestBody) {
    return apiHandler<LoginResponseModel?>(
      () async {
        var res = await _apiService.login(requestBody);
        successToast(res.message);
        return res;
      },
    );
  }

  @override
  FutureEither<RegisterResponseModel?> register(
      RegisterRequestModel requestBody) {
    return apiHandler<RegisterResponseModel?>(
      () async {
        var res = await _apiService.register(requestBody);
        successToast(res.message);
        return res;
      },
    );
  }

  @override
  FutureEither<OTPVerificationResponseModel?> verifyOTP(
      OTPVerificationRequestModel requestBody) {
    return apiHandler<OTPVerificationResponseModel?>(
      () async {
        var res = await _apiService.verifyOTP(requestBody);
        successToast(res.message);
        return res;
      },
    );
  }

  @override
  FutureEither<UserData?> getUserDetails() {
    return apiHandler<UserData?>(() async {
      final res = await _apiService.getUserDetails();
      return res.user;
    });
  }

  @override
  FutureEither<LogoutResponseModel?> logout() {
    return apiHandler<LogoutResponseModel?>(
      () async {
        var res = await _apiService.logout();
        successToast(res.message);
        return res;
      },
    );
  }
}
