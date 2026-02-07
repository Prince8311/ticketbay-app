import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_bay/core/api/error_handler.dart';
import 'package:ticket_bay/features/movie/data/repositories/movie_repo_impl.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';

part 'movie_filter_provider.g.dart';

@riverpod
Future<List<LanguageFormatsModel>?> getMovieLanguageFormats(
  Ref ref, {
  required String movieName,
  required String location,
}) async {
  final result = await ref
      .read(movieRepoProvider)
      .getMovieLanguageFormats(name: movieName, location: location);

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return [];
    },
    (data) => data ?? [],
  );
}

@riverpod
Future<List<MovieDateItem>?> getMovieAvailableDates(
  Ref ref, {
  required String movieName,
  required String location,
  required String language,
  required String format,
}) async {
  final result = await ref.read(movieRepoProvider).getMovieAvailableDates(
        name: movieName,
        location: location,
        language: language,
        format: format,
      );

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return [];
    },
    (data) => data ?? [],
  );
}

@riverpod
Future<List<InfoTheaterItem>?> getMovieInfo(
  Ref ref, {
  required String movieName,
  required String location,
  required String date,
  required String language,
  required String format,
}) async {
  final result = await ref.read(movieRepoProvider).getMovieInfo(
        name: movieName,
        location: location,
        date: date,
        language: language,
        format: format,
      );

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return [];
    },
    (data) => data ?? [],
  );
}
