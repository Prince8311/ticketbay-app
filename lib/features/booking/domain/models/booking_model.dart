import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class BookingInfoModel with _$BookingInfoModel {
  const factory BookingInfoModel({
    @JsonKey(name: 'userName') String? userName,
    @JsonKey(name: 'userEmail') String? userEmail,
    @JsonKey(name: 'userPhone') String? userPhone,
    @JsonKey(name: 'movieName') String? movieName,
    @JsonKey(name: 'theaterName') String? theaterName,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'screen') String? screen,
    @JsonKey(name: 'price') int? price,
    @JsonKey(name: 'bookingId') String? bookingId,
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

@freezed
class PaymentCredentialsRequest with _$PaymentCredentialsRequest {
  const factory PaymentCredentialsRequest({
    @JsonKey(name: 'bookingId') String? bookingId,
    @JsonKey(name: 'userName') String? userName,
    @JsonKey(name: 'userEmail') String? userEmail,
    @JsonKey(name: 'userPhone') String? userPhone,
    @JsonKey(name: 'theaterName') String? theaterName,
    @JsonKey(name: 'movieName') String? movieName,
    @JsonKey(name: 'ticketPrice') String? ticketPrice,
    @JsonKey(name: 'baseConvenience') String? baseConvenience,
    @JsonKey(name: 'gst') String? gst,
    @JsonKey(name: 'theaterCommission') String? theaterCommission,
  }) = _PaymentCredentialsRequest;

  factory PaymentCredentialsRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentCredentialsRequestFromJson(json);
}

@freezed
class PaymentCredentialsResponse with _$PaymentCredentialsResponse {
  const factory PaymentCredentialsResponse({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'checksum') String? checksum,
    @JsonKey(name: 'merchantId') String? merchantId,
    @JsonKey(name: 'merchantTransactionId') String? merchantTransactionId,
    @JsonKey(name: 'callbackUrl') String? callbackUrl,
    @JsonKey(name: 'apiEndPoint') String? apiEndPoint,
    @JsonKey(name: 'environment') String? environment,
  }) = _PaymentCredentialsResponse;

  factory PaymentCredentialsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentCredentialsResponseFromJson(json);
}
