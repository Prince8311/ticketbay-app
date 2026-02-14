import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_bay/core/api/error_handler.dart';
import 'package:ticket_bay/features/booking/data/repositories/booking_repo_impl.dart';
import 'package:ticket_bay/features/booking/domain/models/booking_model.dart';

part 'booking_provider.g.dart';

@riverpod
Future<SeatReserveResponse?> reserveSeats(Ref ref,
    {required SeatReserveRequest requestBody}) async {
  final result = await ref.read(bookingRepoProvider).reserveSeats(requestBody);

  return result.fold(
    (error) {
      ApiError.commonErrorHandler(error);
      return null;
    },
    (data) => data,
  );
}
