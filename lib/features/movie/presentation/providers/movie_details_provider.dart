import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_bay/core/api/error_handler.dart';
import 'package:ticket_bay/features/movie/data/repositories/movie_repo_impl.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';

part 'movie_details_provider.g.dart';

@riverpod
Future<MovieDetailsModel?> movieDetails(
  Ref ref, {
  required String location,
  required String movieName,
}) async {
  final result = await ref.read(movieRepoProvider).getMovieDetails(
        location: location,
        name: movieName,
      );
  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return null;
    },
    (data) => data,
  );
}
