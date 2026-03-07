import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/core/shared/models/api_response_model.dart';
import 'package:ticket_bay/features/auth/domain/models/auth_model.dart';

abstract class AuthRepository {
  FutureEither<LoginResponseModel?> login(LoginRequestModel requestBody);
  FutureEither<ApiResponseModel?> register(RegisterRequestModel requestBody);
  FutureEither<ApiResponseModel?> sendOTP(OTPRequestModel requestBody);
  FutureEither<ApiResponseModel?> verifyOTP(
      OTPVerificationRequestModel requestBody);
  FutureEither<ApiResponseModel?> resetPassword(ResetPasswordModel requestBody);
  FutureEither<UserData?> getUserDetails();
  FutureEither<ApiResponseModel?> logout();
}
