import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:ticket_bay/core/api/api_client.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/theater/domain/models/theaters_model.dart';
part 'theater_api_service.g.dart';

final theaterApiServiceProvider = Provider<TheaterApiService>((ref) {
  return TheaterApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class TheaterApiService {
  factory TheaterApiService(Dio dio, {String baseUrl}) = _TheaterApiService;

  @GET(Endpoints.theaters)
  Future<TheaterListModel> getTheaters({
    @Query("location") required String location,
    @Query("page") int? page,
  });

  @GET(Endpoints.theaterLanguageFormats)
  Future<LanguageFormatResponseModel> getTheaterLanguageFormats({
    @Query("name") required String name,
  });
}
