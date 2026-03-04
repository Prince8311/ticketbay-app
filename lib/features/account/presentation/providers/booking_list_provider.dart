import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/shared/widgets/api_list_widget.dart';
import 'package:ticket_bay/features/account/data/repositories/account_repo_impl.dart';
import 'package:ticket_bay/features/account/domain/models/booking_list_model.dart';
import 'package:ticket_bay/features/account/domain/repositories/account_repository.dart';
import 'package:ticket_bay/features/auth/presentation/providers/auth_provider.dart';

part 'booking_list_provider.freezed.dart';

/* =========================================================
   STATE
========================================================= */
@freezed
class BookingListState with _$BookingListState {
  const factory BookingListState({
    @Default(false) bool isLoading,
    BookingListModel? data,
    String? error,
    @Default(1) int currentPage,
  }) = _BookingListState;
}

/* =========================================================
   NOTIFIER
========================================================= */
class BookingListNotifier extends StateNotifier<BookingListState>
    with PaginationNotifier<BookingListState> {
  final AccountRepository _repository;
  final Ref ref;

  bool _isLoading = false;

  BookingListNotifier(this._repository, this.ref)
      : super(const BookingListState());

  @override
  Future<void> loadData() async {
    if (_isLoading) return;
    _isLoading = true;

    ref.read(bookingPageProvider.notifier).state = 1;
    ref.read(canLoadMoreBookingProvider.notifier).state = true;

    final user = await ref.read(savedUserProvider.future);
    final type = ref.read(bookingTypeProvider);

    if (user?.name == null ||
        user!.name!.isEmpty ||
        type == null ||
        type.isEmpty) {
      state = state.copyWith(data: null, isLoading: false);
      _isLoading = false;
      return;
    }

    await _fetchBookings(
      page: 1,
      append: false,
      userName: user.name!,
      type: type,
    );

    _isLoading = false;
  }

  Future<void> _fetchBookings({
    required int page,
    required String userName,
    required String type,
    bool append = false,
  }) async {
    if (!mounted) return;

    state = state.copyWith(isLoading: true, error: null);

    final result = await _repository.getBookingList(
      userName: userName,
      type: type,
      page: page,
    );

    if (!mounted) return;

    result.fold(
      (error) {
        state = state.copyWith(isLoading: false, error: error.message);
        ref.read(canLoadMoreBookingProvider.notifier).state = false;
      },
      (data) {
        final oldBookings = append ? state.data?.list ?? [] : [];
        final newBookings = data?.list ?? [];

        state = state.copyWith(
          isLoading: false,
          currentPage: page,
          data: data?.copyWith(
            list: [...oldBookings, ...newBookings],
          ),
        );

        ref.read(canLoadMoreBookingProvider.notifier).state =
            newBookings.isNotEmpty;
      },
    );
  }

  @override
  Future<void> loadMore() async {
    if (state.isLoading || !mounted) return;
    if (!ref.read(canLoadMoreBookingProvider)) return;

    final user = await ref.read(savedUserProvider.future);
    final type = ref.read(bookingTypeProvider);

    if (user?.name == null || type == null) return;

    final nextPage = state.currentPage + 1;

    await _fetchBookings(
      page: nextPage,
      append: true,
      userName: user!.name!,
      type: type,
    );

    ref.read(bookingPageProvider.notifier).state = nextPage;
  }

  @override
  Future<void> refresh() async {
    if (!mounted) return;

    final user = await ref.read(savedUserProvider.future);
    final type = ref.read(bookingTypeProvider);

    if (user?.name == null || type == null) return;

    await _fetchBookings(
      page: 1,
      append: false,
      userName: user!.name!,
      type: type,
    );

    ref.read(bookingRefreshTriggerProvider.notifier).state++;
  }

  void clear() {
    state = const BookingListState();
    ref.read(bookingPageProvider.notifier).state = 1;
    ref.read(canLoadMoreBookingProvider.notifier).state = false;
  }
}

/* =========================================================
   PROVIDERS
========================================================= */
final bookingListProvider =
    AutoDisposeStateNotifierProvider<BookingListNotifier, BookingListState>(
  (ref) {
    final repo = ref.read(accountRepoProvider);
    final type = ref.watch(bookingTypeProvider);
    final notifier = BookingListNotifier(repo, ref);
    if (type != null && type.isNotEmpty) {
      notifier.loadData();
    }

    return notifier;
  },
);

final bookingUserNameProvider = StateProvider<String?>((ref) => null);
final bookingTypeProvider = StateProvider<String?>((ref) => null);

final bookingPageProvider = StateProvider<int>((ref) => 1);
final canLoadMoreBookingProvider = StateProvider<bool>((ref) => true);
final bookingRefreshTriggerProvider = StateProvider<int>((ref) => 0);
