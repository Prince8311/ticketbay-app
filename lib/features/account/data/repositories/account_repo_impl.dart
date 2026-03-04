import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/api_handler.dart';
import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/account/data/datasources/account_api_service.dart';
import 'package:ticket_bay/features/account/domain/models/booking_list_model.dart';
import 'package:ticket_bay/features/account/domain/repositories/account_repository.dart';

final accountRepoProvider = Provider<AccountRepository>((ref) {
  return AccountRepoImpl(ref, ref.read(accountApiServiceProvider));
});

class AccountRepoImpl extends AccountRepository {
  final AccountApiService _apiService;
  final Ref ref;

  AccountRepoImpl(this.ref, AccountApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<BookingListModel?> getBookingList(
      {required String userName, required String type, int? page}) {
    return apiHandler<BookingListModel?>(() async {
      final res = await _apiService.getBookingList(
        userName: userName,
        type: type,
        page: page,
      );
      return res;
    });
  }
}
