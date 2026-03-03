import 'package:dio/dio.dart' hide Headers;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ticket_bay/core/api/api_client.dart';
import 'package:ticket_bay/core/api/end_points.dart';
part 'account_api_service.g.dart';

final accountApiServiceProvider = Provider<AccountApiService>((ref) {
  return AccountApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class AccountApiService {
  factory AccountApiService(Dio dio, {String baseUrl}) = _AccountApiService;
}
