import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/account/domain/models/booking_list_model.dart';

abstract class AccountRepository {
  FutureEither<BookingListModel?> getBookingList({
    required String userName,
    required String type,
    int? page,
  });
}
