import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_bay/core/api/api_handler.dart';
import 'package:ticket_bay/core/shared/miscellaneous/typedefs.dart';
import 'package:ticket_bay/features/booking/data/datasources/booking_api_service.dart';
import 'package:ticket_bay/features/booking/domain/models/booking_model.dart';
import 'package:ticket_bay/features/booking/domain/repositories/booking_repository.dart';

final bookingRepoProvider = Provider<BookingRepository>((ref) {
  return BookingRepoImpl(ref, ref.read(bookingApiServiceProvider));
});

class BookingRepoImpl extends BookingRepository {
  final BookingApiService _apiService;
  final Ref ref;

  BookingRepoImpl(this.ref, BookingApiService apiService)
      : _apiService = apiService;

  @override
  FutureEither<SeatReserveResponse?> reserveSeats(
      SeatReserveRequest requestBody) {
    return apiHandler<SeatReserveResponse?>(
      () async {
        var res = await _apiService.reserveSeats(requestBody);
        return res;
      },
    );
  }

  @override
  FutureEither<PaymentCredentialsResponse?> getPaymentCredential(
      PaymentCredentialsRequest requestBody) {
    return apiHandler<PaymentCredentialsResponse?>(
      () async {
        var res = await _apiService.getPaymentCredential(requestBody);
        return res;
      },
    );
  }
}
