import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/api_list_widget.dart';
import 'package:ticket_bay/features/movie/data/repositories/movie_repo_impl.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/movie/domain/repositories/movie_repository.dart';

part 'coming_soon_movies_provider.freezed.dart';

/* =========================================================
   STATE
========================================================= */
@freezed
class ComingSoonMoviesState with _$ComingSoonMoviesState {
  const factory ComingSoonMoviesState({
    @Default(false) bool isLoading,
    MovieListModel? data,
    String? error,
    @Default(1) int currentPage,
  }) = _ComingSoonMoviesState;
}

/* =========================================================
   NOTIFIER
========================================================= */
class ComingSoonMoviesNotifier extends StateNotifier<ComingSoonMoviesState>
    with PaginationNotifier<ComingSoonMoviesState> {
  final MovieRepository _repository;
  final Ref ref;
  bool _isLoading = false;

  ComingSoonMoviesNotifier(this._repository, this.ref)
      : super(const ComingSoonMoviesState()) {
    loadData();
  }

  @override
  Future<void> loadData() async {
    if (_isLoading) return;
    _isLoading = true;

    ref.read(comingSoonMoviePageProvider.notifier).state = 1;
    ref.read(canLoadMoreComingSoonMoviesProvider.notifier).state = true;

    final location = ref.read(comingSoonMovieLocationProvider);

    if (location == null || location.isEmpty) {
      state = state.copyWith(data: null, isLoading: false);
      _isLoading = false;
      return;
    }

    await _fetchMovies(page: 1, append: false, location: location);

    _isLoading = false;
  }

  Future<void> _fetchMovies({
    required int page,
    required String location,
    bool append = false,
  }) async {
    if (!mounted) return;

    state = state.copyWith(isLoading: true, error: null);

    final result = await _repository.getComingSoonMovies(
      location: location,
      page: page,
    );

    if (!mounted) return;

    result.fold(
      (error) {
        state = state.copyWith(isLoading: false, error: error.message);
        ref.read(canLoadMoreComingSoonMoviesProvider.notifier).state = false;
      },
      (data) {
        final oldMovies = append ? state.data?.movies ?? [] : [];
        final newMovies = data?.movies ?? [];

        state = state.copyWith(
          isLoading: false,
          currentPage: page,
          data: data?.copyWith(
            movies: [...oldMovies, ...newMovies],
          ),
        );

        ref.read(canLoadMoreComingSoonMoviesProvider.notifier).state =
            newMovies.isNotEmpty;
      },
    );
  }

  @override
  Future<void> loadMore() async {
    if (state.isLoading || !mounted) return;
    if (!ref.read(canLoadMoreComingSoonMoviesProvider)) return;

    final location = ref.read(comingSoonMovieLocationProvider);
    if (location == null || location.isEmpty) return;

    final nextPage = state.currentPage + 1;
    await _fetchMovies(page: nextPage, append: true, location: location);

    ref.read(comingSoonMoviePageProvider.notifier).state = nextPage;
  }

  @override
  Future<void> refresh() async {
    if (!mounted) return;

    final location = ref.read(comingSoonMovieLocationProvider);
    if (location == null || location.isEmpty) return;

    await _fetchMovies(page: 1, append: false, location: location);
    ref.read(comingSoonMoviesRefreshTriggerProvider.notifier).state++;
  }

  void clear() {
    state = const ComingSoonMoviesState();
    ref.read(comingSoonMoviePageProvider.notifier).state = 1;
    ref.read(canLoadMoreComingSoonMoviesProvider.notifier).state = false;
  }
}

/* =========================================================
   PROVIDERS
========================================================= */
final comingSoonMoviesProvider = AutoDisposeStateNotifierProvider<
    ComingSoonMoviesNotifier, ComingSoonMoviesState>(
  (ref) {
    final repo = ref.read(movieRepoProvider);
    return ComingSoonMoviesNotifier(repo, ref);
  },
);

final comingSoonMovieLocationProvider = StateProvider<String?>((ref) => null);
final comingSoonMoviePageProvider = StateProvider<int>((ref) => 1);
final canLoadMoreComingSoonMoviesProvider = StateProvider<bool>((ref) => true);
final comingSoonMoviesRefreshTriggerProvider = StateProvider<int>((ref) => 0);
