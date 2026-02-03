import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/api_list_widget.dart';
import 'package:ticket_bay/features/theater/data/repositories/theater_repo_impl.dart';
import 'package:ticket_bay/features/theater/domain/models/theaters_model.dart';
import 'package:ticket_bay/features/theater/domain/repositories/theater_repository.dart';

part 'theaters_provider.freezed.dart';

/* =========================================================
   STATE
========================================================= */
@freezed
class TheatersState with _$TheatersState {
  const factory TheatersState({
    @Default(false) bool isLoading,
    TheaterListModel? data,
    String? error,
    @Default(1) int currentPage,
  }) = _TheatersState;
}

/* =========================================================
   NOTIFIER
========================================================= */
class TheatersNotifier extends StateNotifier<TheatersState>
    with PaginationNotifier<TheatersState> {
  final TheaterRepository _repository;
  final Ref ref;
  bool _isLoading = false;

  TheatersNotifier(this._repository, this.ref) : super(const TheatersState()) {
    loadData();
  }

  @override
  Future<void> loadData() async {
    if (_isLoading) return;
    _isLoading = true;

    ref.read(theatersPageProvider.notifier).state = 1;
    ref.read(canLoadMoretheatersProvider.notifier).state = true;

    final location = ref.read(theatersLocationProvider);

    if (location == null || location.isEmpty) {
      state = state.copyWith(data: null, isLoading: false);
      _isLoading = false;
      return;
    }

    await _fetchTheaters(page: 1, append: false, location: location);

    _isLoading = false;
  }

  Future<void> _fetchTheaters({
    required int page,
    required String location,
    bool append = false,
  }) async {
    if (!mounted) return;

    state = state.copyWith(isLoading: true, error: null);

    final result = await _repository.getTheaters(
      location: location,
      page: page,
    );

    if (!mounted) return;

    result.fold(
      (error) {
        state = state.copyWith(isLoading: false, error: error.message);
        ref.read(canLoadMoretheatersProvider.notifier).state = false;
      },
      (data) {
        final oldTheaters = append ? state.data?.theaters ?? [] : [];
        final newTheaters = data?.theaters ?? [];

        state = state.copyWith(
          isLoading: false,
          currentPage: page,
          data: data?.copyWith(
            theaters: [...oldTheaters, ...newTheaters],
          ),
        );

        ref.read(canLoadMoretheatersProvider.notifier).state =
            newTheaters.isNotEmpty;
      },
    );
  }

  @override
  Future<void> loadMore() async {
    if (state.isLoading || !mounted) return;
    if (!ref.read(canLoadMoretheatersProvider)) return;

    final location = ref.read(theatersLocationProvider);
    if (location == null || location.isEmpty) return;

    final nextPage = state.currentPage + 1;
    await _fetchTheaters(page: nextPage, append: true, location: location);

    ref.read(theatersPageProvider.notifier).state = nextPage;
  }

  @override
  Future<void> refresh() async {
    if (!mounted) return;

    final location = ref.read(theatersLocationProvider);
    if (location == null || location.isEmpty) return;

    await _fetchTheaters(page: 1, append: false, location: location);
    ref.read(theatersRefreshTriggerProvider.notifier).state++;
  }

  void clear() {
    state = const TheatersState();
    ref.read(theatersPageProvider.notifier).state = 1;
    ref.read(canLoadMoretheatersProvider.notifier).state = false;
  }
}

/* =========================================================
   PROVIDERS
========================================================= */
final theatersProvider =
    AutoDisposeStateNotifierProvider<TheatersNotifier, TheatersState>(
  (ref) {
    final repo = ref.read(theaterRepoProvider);
    return TheatersNotifier(repo, ref);
  },
);

final theatersLocationProvider = StateProvider<String?>((ref) => null);
final theatersPageProvider = StateProvider<int>((ref) => 1);
final canLoadMoretheatersProvider = StateProvider<bool>((ref) => true);
final theatersRefreshTriggerProvider = StateProvider<int>((ref) => 0);
