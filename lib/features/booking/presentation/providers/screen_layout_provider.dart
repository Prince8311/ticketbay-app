import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_bay/core/api/error_handler.dart';
import 'package:ticket_bay/features/booking/data/repositories/screen_layout_repo_impl.dart';
import 'package:ticket_bay/features/booking/domain/models/screen_layout_model.dart';

part 'screen_layout_provider.g.dart';

@riverpod
Future<List<SectionItem>?> getScreenSections(
  Ref ref, {
  required String screen,
  required String screenId,
  required String theaterName,
}) async {
  final result = await ref.read(screenLayoutRepoProvider).getScreenSections(
        screen: screen,
        screenId: screenId,
        theaterName: theaterName,
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
Future<List<ScreenSeatsModel>?> getScreenLayout(
  Ref ref, {
  required String screenId,
  required String sectionName,
  required String theaterName,
}) async {
  final result = await ref.read(screenLayoutRepoProvider).getScreenLayout(
        screenId: screenId,
        sectionName: sectionName,
        theaterName: theaterName,
      );

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return [];
    },
    (data) => data ?? [],
  );
}
