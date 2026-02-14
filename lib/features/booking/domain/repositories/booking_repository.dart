import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/booking/domain/models/booking_model.dart';

abstract class BookingRepository {
  FutureEither<SeatReserveResponse?> reserveSeats(
    SeatReserveRequest requestBody,
  );
}
