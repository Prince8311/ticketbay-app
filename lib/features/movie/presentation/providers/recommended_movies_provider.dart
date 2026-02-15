import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/api_list_widget.dart';
import 'package:ticket_bay/features/movie/data/repositories/movie_repo_impl.dart';
import 'package:ticket_bay/features/movie/domain/models/movies_model.dart';
import 'package:ticket_bay/features/movie/domain/repositories/movie_repository.dart';

part 'recommended_movies_provider.freezed.dart';

/* =========================================================
   STATE
========================================================= */
@freezed
class RecommendedMoviesState with _$RecommendedMoviesState {
  const factory RecommendedMoviesState({
    @Default(false) bool isLoading,
    MovieListModel? data,
    String? error,
    @Default(1) int currentPage,
  }) = _RecommendedMoviesState;
}

/* =========================================================
   NOTIFIER
========================================================= */
class RecommendedMoviesNotifier extends StateNotifier<RecommendedMoviesState>
    with PaginationNotifier<RecommendedMoviesState> {
  final MovieRepository _repository;
  final Ref ref;
  bool _isLoading = false;

  RecommendedMoviesNotifier(this._repository, this.ref)
      : super(const RecommendedMoviesState());

  @override
  Future<void> loadData() async {
    if (_isLoading) return;
    _isLoading = true;

    ref.read(recommendedMoviePageProvider.notifier).state = 1;
    ref.read(canLoadMoreRecommendedMoviesProvider.notifier).state = true;

    final location = ref.read(recommendedMovieLocationProvider);

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

    final result = await _repository.getRecommendedMovies(
      location: location,
      page: page,
    );

    if (!mounted) return;

    result.fold(
      (error) {
        state = state.copyWith(isLoading: false, error: error.message);
        ref.read(canLoadMoreRecommendedMoviesProvider.notifier).state = false;
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

        ref.read(canLoadMoreRecommendedMoviesProvider.notifier).state =
            newMovies.isNotEmpty;
      },
    );
  }

  @override
  Future<void> loadMore() async {
    if (state.isLoading || !mounted) return;
    if (!ref.read(canLoadMoreRecommendedMoviesProvider)) return;

    final location = ref.read(recommendedMovieLocationProvider);
    if (location == null || location.isEmpty) return;

    final nextPage = state.currentPage + 1;
    await _fetchMovies(page: nextPage, append: true, location: location);

    ref.read(recommendedMoviePageProvider.notifier).state = nextPage;
  }

  @override
  Future<void> refresh() async {
    if (!mounted) return;

    final location = ref.read(recommendedMovieLocationProvider);
    if (location == null || location.isEmpty) return;

    await _fetchMovies(page: 1, append: false, location: location);
    ref.read(recommendedMoviesRefreshTriggerProvider.notifier).state++;
  }

  void clear() {
    state = const RecommendedMoviesState();
    ref.read(recommendedMoviePageProvider.notifier).state = 1;
    ref.read(canLoadMoreRecommendedMoviesProvider.notifier).state = false;
  }
}

/* =========================================================
   PROVIDERS
========================================================= */
final recommendedMoviesProvider = AutoDisposeStateNotifierProvider<
    RecommendedMoviesNotifier, RecommendedMoviesState>(
  (ref) {
    final repo = ref.read(movieRepoProvider);
    return RecommendedMoviesNotifier(repo, ref);
  },
);

final recommendedMovieLocationProvider = StateProvider<String?>((ref) => null);
final recommendedMoviePageProvider = StateProvider<int>((ref) => 1);
final canLoadMoreRecommendedMoviesProvider = StateProvider<bool>((ref) => true);
final recommendedMoviesRefreshTriggerProvider = StateProvider<int>((ref) => 0);
