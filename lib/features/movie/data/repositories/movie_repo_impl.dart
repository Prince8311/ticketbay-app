import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/api_handler.dart';
import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/movie/data/datasources/movie_api_service.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/movie/domain/repositories/movie_repository.dart';

final movieRepoProvider = Provider<MovieRepository>((ref) {
  return MovieRepoImpl(ref, ref.read(movieApiServiceProvider));
});

class MovieRepoImpl extends MovieRepository {
  final MovieApiService _apiService;
  final Ref ref;

  MovieRepoImpl(this.ref, MovieApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<MovieListModel?> getRecommendedMovies({
    required String location,
    int? page,
  }) {
    return apiHandler<MovieListModel?>(() async {
      final res = await _apiService.getRecommendedMovies(
        location: location,
        page: page,
      );
      return res;
    });
  }

  @override
  FutureEither<MovieListModel?> getComingSoonMovies({
    required String location,
    int? page,
  }) {
    return apiHandler<MovieListModel?>(() async {
      final res = await _apiService.getComingSoonMovies(
        location: location,
        page: page,
      );
      return res;
    });
  }

  @override
  FutureEither<MovieListModel?> getUpcomingMovies({
    int? page,
  }) {
    return apiHandler<MovieListModel?>(() async {
      final res = await _apiService.getUpcomingMovies(
        page: page,
      );
      return res;
    });
  }

  @override
  FutureEither<MovieDetailsModel?> getMovieDetails({
    required String location,
    required String name,
  }) {
    return apiHandler<MovieDetailsModel?>(() async {
      final res = await _apiService.getMovieDetails(
        location: location,
        name: name,
      );
      return res.movie;
    });
  }

  @override
  FutureEither<List<LanguageFormatsModel>?> getMovieLanguageFormats({
    required String name,
    required String location,
  }) {
    return apiHandler<List<LanguageFormatsModel>?>(() async {
      final res = await _apiService.getMovieLanguageFormats(
        name: name,
        location: location,
      );
      return res.data;
    });
  }
}
