import 'package:freezed_annotation/freezed_annotation.dart';
part 'booking_list_model.freezed.dart';
part 'booking_list_model.g.dart';

@freezed
class BookingListModel with _$BookingListModel {
  const factory BookingListModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'currentPage') int? currentPage,
    @JsonKey(name: 'list') List<TicketModel>? list,
  }) = _BookingListModel;

  factory BookingListModel.fromJson(Map<String, dynamic> json) =>
      _$BookingListModelFromJson(json);
}

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'booking_id') String? bookingId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'theater_name') String? theaterName,
    @JsonKey(name: 'movie_name') String? movieName,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'valid_date') String? validDate,
    @JsonKey(name: 'valid_time') String? validTime,
    @JsonKey(name: 'screen') String? screen,
    @JsonKey(name: 'screen_id') String? screenId,
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'seats') String? seats,
    @JsonKey(name: 'base_convenience') String? baseConvenience,
    @JsonKey(name: 'gst') String? gst,
    @JsonKey(name: 'theater_commission') String? theaterCommission,
    @JsonKey(name: 'merchant_transaction_id') String? merchantTransactionId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'poster_image') String? posterImage,
  }) = _TicketModel;

  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);
}
