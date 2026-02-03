import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/api_list_widget.dart';
import 'package:ticket_bay/features/movie/data/repositories/movie_repo_impl.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/movie/domain/repositories/movie_repository.dart';

part 'upcoming_movies_provider.freezed.dart';

/* =========================================================
   STATE
========================================================= */
@freezed
class UpcomingMoviesState with _$UpcomingMoviesState {
  const factory UpcomingMoviesState({
    @Default(false) bool isLoading,
    MovieListModel? data,
    String? error,
    @Default(1) int currentPage,
  }) = _UpcomingMoviesState;
}

/* =========================================================
   NOTIFIER
========================================================= */
class UpcomingMoviesNotifier extends StateNotifier<UpcomingMoviesState>
    with PaginationNotifier<UpcomingMoviesState> {
  final MovieRepository _repository;
  final Ref ref;
  bool _isLoading = false;

  UpcomingMoviesNotifier(this._repository, this.ref)
      : super(const UpcomingMoviesState());

  @override
  Future<void> loadData() async {
    if (_isLoading) return;
    _isLoading = true;

    await _fetchMovies(page: 1);

    _isLoading = false;
  }

  Future<void> _fetchMovies({required int page, bool append = false}) async {
    if (!mounted) return;

    state = state.copyWith(isLoading: true, error: null);

    final result = await _repository.getUpcomingMovies(page: page);

    if (!mounted) return;

    result.fold(
      (failure) {
        if (!mounted) return;
        state = state.copyWith(isLoading: false, error: failure.message);
        ref.read(canLoadMoreUpcomingMoviesProvider.notifier).state = false;
      },
      (data) {
        if (!mounted) return;

        final oldMovies = append ? state.data?.movies ?? [] : [];
        final newMovies = data?.movies ?? [];

        state = state.copyWith(
          isLoading: false,
          currentPage: page,
          data: data?.copyWith(
            movies: [...oldMovies, ...newMovies],
          ),
        );

        ref.read(canLoadMoreUpcomingMoviesProvider.notifier).state =
            newMovies.isNotEmpty;
      },
    );
  }

  @override
  Future<void> loadMore() async {
    if (state.isLoading || !mounted) return;

    final nextPage = state.currentPage + 1;
    await _fetchMovies(page: nextPage, append: true);
  }

  @override
  Future<void> refresh() async {
    if (!mounted) return;
    await _fetchMovies(page: 1, append: false);
  }
}

/* =========================================================
   PROVIDERS
========================================================= */
final upcomingMoviesProvider = AutoDisposeStateNotifierProvider<
    UpcomingMoviesNotifier, UpcomingMoviesState>((ref) {
  final repo = ref.read(movieRepoProvider);
  return UpcomingMoviesNotifier(repo, ref)..loadData(); // <-- pass ref here
});

final upcomingMoviesPageProvider = StateProvider<int>((ref) => 1);

final canLoadMoreUpcomingMoviesProvider = StateProvider<bool>((ref) => true);
