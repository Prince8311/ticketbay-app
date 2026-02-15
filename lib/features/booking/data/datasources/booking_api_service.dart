import 'package:dio/dio.dart' hide Headers;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ticket_bay/core/api/api_client.dart';
import 'package:ticket_bay/core/api/end_points.dart';
import 'package:ticket_bay/features/booking/domain/models/booking_model.dart';
part 'booking_api_service.g.dart';

final bookingApiServiceProvider = Provider<BookingApiService>((ref) {
  return BookingApiService(ref.read(apiClientProvider));
});

@RestApi(baseUrl: Endpoints.apiURL)
abstract class BookingApiService {
  factory BookingApiService(Dio dio, {String baseUrl}) = _BookingApiService;

  @POST(Endpoints.seatReserve)
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<SeatReserveResponse> reserveSeats(@Body() SeatReserveRequest body);
}
