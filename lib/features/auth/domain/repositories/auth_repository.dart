import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/auth/domain/models/auth_model.dart';

abstract class AuthRepository {
  FutureEither<LoginResponseModel?> login(LoginRequestModel requestBody);
  FutureEither<RegisterResponseModel?> register(
      RegisterRequestModel requestBody);
  FutureEither<OTPVerificationResponseModel?> verifyOTP(
      OTPVerificationRequestModel requestBody);
  FutureEither<UserData?> getUserDetails();
  FutureEither<LogoutResponseModel?> logout();
}
