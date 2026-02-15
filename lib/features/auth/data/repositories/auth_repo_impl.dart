import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/api_handler.dart';
import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
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
}
