import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_bay/core/api/error_handler.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/theater/data/repositories/theater_repo_impl.dart';

part 'theater_filter_provider.g.dart';

@riverpod
Future<List<LanguageFormatsModel>?> getTheaterLanguageFormats(
  Ref ref, {
  required String theaterName,
}) async {
  final result = await ref
      .read(theaterRepoProvider)
      .getTheaterLanguageFormats(name: theaterName);

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return [];
    },
    (data) => data ?? [],
  );
}
