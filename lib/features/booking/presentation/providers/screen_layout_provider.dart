import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_bay/core/api/error_handler.dart';
import 'package:ticket_bay/features/booking/data/repositories/screen_layout_repo_impl.dart';
import 'package:ticket_bay/features/booking/domain/models/screen_layout_model.dart';
import 'package:ticket_bay/features/booking/presentation/screens/seat_layout_screen.dart';

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

final selectedSeatsProvider =
    StateNotifierProvider<SelectedSeatsNotifier, List<SelectedSeat>>(
  (ref) => SelectedSeatsNotifier(ref),
);

class SelectedSeatsNotifier extends StateNotifier<List<SelectedSeat>> {
  SelectedSeatsNotifier(this.ref) : super([]);

  final Ref ref;

  void toggleSeat(SelectedSeat seat) {
    final maxSeats = ref.read(seatCountProvider);

    final exists = state.any(
      (s) => s.row == seat.row && s.seat == seat.seat,
    );

    if (exists) {
      state = state
          .where((s) => !(s.row == seat.row && s.seat == seat.seat))
          .toList();
      return;
    }

    if (state.length >= maxSeats) return;

    state = [...state, seat];
  }

  bool isSelected(String row, int seat) {
    return state.any((s) => s.row == row && s.seat == seat);
  }

  void clear() => state = [];
}
