import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ticket_bay/core/api/api_client.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
part 'movie_api_service.g.dart';

final movieApiServiceProvider = Provider<MovieApiService>((ref) {
  return MovieApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class MovieApiService {
  factory MovieApiService(Dio dio, {String baseUrl}) = _MovieApiService;

  @GET(Endpoints.recommendedMovies)
  Future<MovieListModel> getRecommendedMovies({
    @Query("location") required String location,
    @Query("page") int? page,
  });

  @GET(Endpoints.comingSoonMovies)
  Future<MovieListModel> getComingSoonMovies({
    @Query("location") required String location,
    @Query("page") int? page,
  });

  @GET(Endpoints.upcomingMovies)
  Future<MovieListModel> getUpcomingMovies({
    @Query("page") int? page,
  });

  @GET(Endpoints.movieDetails)
  Future<MovieDetailsResponseModel> getMovieDetails({
    @Query("location") required String location,
    @Query("name") required String name,
  });

  @GET(Endpoints.movieLanguageFormats)
  Future<LanguageFormatResponseModel> getMovieLanguageFormats({
    @Query("name") required String name,
    @Query("location") required String location,
  });
}
