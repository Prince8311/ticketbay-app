import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class BookingInfoModel with _$BookingInfoModel {
  const factory BookingInfoModel({
    @JsonKey(name: 'movieName') String? movieName,
    @JsonKey(name: 'theaterName') String? theaterName,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'screen') String? screen,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'adminCommission') int? adminCommission,
    @JsonKey(name: 'theaterCommission') int? theaterCommission,
    @JsonKey(name: 'section') String? section,
  }) = _BookingInfoModel;

  factory BookingInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BookingInfoModelFromJson(json);
}

@freezed
class SeatReserveRequest with _$SeatReserveRequest {
  const factory SeatReserveRequest({
    @JsonKey(name: 'userName') String? userName,
    @JsonKey(name: 'movieName') String? movieName,
    @JsonKey(name: 'theaterName') String? theaterName,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'startTime') String? startTime,
    @JsonKey(name: 'startDate') String? startDate,
    @JsonKey(name: 'screen') String? screen,
    @JsonKey(name: 'screenId') String? screenId,
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'seats') String? seats,
  }) = _SeatReserveRequest;

  factory SeatReserveRequest.fromJson(Map<String, dynamic> json) =>
      _$SeatReserveRequestFromJson(json);
}

@freezed
class SeatReserveResponse with _$SeatReserveResponse {
  const factory SeatReserveResponse({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'bookingId') String? bookingId,
  }) = _SeatReserveResponse;

  factory SeatReserveResponse.fromJson(Map<String, dynamic> json) =>
      _$SeatReserveResponseFromJson(json);
}
