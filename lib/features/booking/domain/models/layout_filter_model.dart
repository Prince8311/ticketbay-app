import 'package:freezed_annotation/freezed_annotation.dart';
part 'layout_filter_model.freezed.dart';
part 'layout_filter_model.g.dart';

/* ================= SEAT LAYOUT REDIRECTION ================= */
@freezed
class SeatLayoutInfoModel with _$SeatLayoutInfoModel {
  const factory SeatLayoutInfoModel({
    @JsonKey(name: 'movieName') String? movieName,
    @JsonKey(name: 'theaterName') String? theaterName,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'screen') String? screen,
    @JsonKey(name: 'screenId') String? screenId,
  }) = _SeatLayoutInfoModel;

  factory SeatLayoutInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SeatLayoutInfoModelFromJson(json);
}
