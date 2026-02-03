import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';

abstract class MovieRepository {
  FutureEither<MovieListModel?> getRecommendedMovies({
    required String location,
    int? page,
  });
  FutureEither<MovieListModel?> getComingSoonMovies({
    required String location,
    int? page,
  });
  FutureEither<MovieListModel?> getUpcomingMovies({int? page});
  FutureEither<MovieDetailsModel?> getMovieDetails({
    required String location,
    required String name,
  });
  FutureEither<List<LanguageFormatsModel>?> getMovieLanguageFormats({
    required String name,
    required String location,
  });
}
