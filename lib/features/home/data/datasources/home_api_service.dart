import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ticket_bay/core/api/api_client.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/features/home/domain/models/cities_model.dart';
part 'home_api_service.g.dart';

final homeApiServiceProvider = Provider<HomeApiService>((ref) {
  return HomeApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(Endpoints.cities)
  Future<CityListModel> getLocations({@Query("search") String? search});
}
