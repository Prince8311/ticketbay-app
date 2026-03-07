import 'package:dio/dio.dart' hide Headers;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ticket_bay/core/api/api_client.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/core/shared/models/api_response_model.dart';
import 'package:ticket_bay/features/auth/domain/models/auth_model.dart';
part 'auth_api_service.g.dart';

final authApiServiceProvider = Provider<AuthApiService>((ref) {
  return AuthApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST(Endpoints.login)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<LoginResponseModel> login(@Body() LoginRequestModel body);

  @POST(Endpoints.register)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponseModel> register(@Body() RegisterRequestModel body);

  @POST(Endpoints.forgotPassword)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponseModel> sendOTP(@Body() OTPRequestModel body);

  @POST(Endpoints.verifyOtp)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponseModel> verifyOTP(@Body() OTPVerificationRequestModel body);

  @POST(Endpoints.resetPassword)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponseModel> resetPassword(@Body() ResetPasswordModel body);

  @GET(Endpoints.checkAuth)
  Future<UserInfoModel> getUserDetails();

  @POST(Endpoints.logout)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponseModel> logout();
}
