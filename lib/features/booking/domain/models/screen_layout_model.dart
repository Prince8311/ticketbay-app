import 'package:freezed_annotation/freezed_annotation.dart';
part 'screen_layout_model.freezed.dart';
part 'screen_layout_model.g.dart';

/* ================= SCREEN SECTIONS ================= */
@freezed
class ScreenSectionsModel with _$ScreenSectionsModel {
  const factory ScreenSectionsModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'sections') List<SectionItem>? sections,
  }) = _ScreenSectionsModel;

  factory ScreenSectionsModel.fromJson(Map<String, dynamic> json) =>
      _$ScreenSectionsModelFromJson(json);
}

@freezed
class SectionItem with _$SectionItem {
  const factory SectionItem({
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'seats') String? seats,
    @JsonKey(name: 'price') String? price,
  }) = _SectionItem;

  factory SectionItem.fromJson(Map<String, dynamic> json) =>
      _$SectionItemFromJson(json);
}

/* ================= SCREEN LAYOUT ================= */
@freezed
class ScreenLayoutModel with _$ScreenLayoutModel {
  const factory ScreenLayoutModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'seatData') List<ScreenSeatsModel>? seatData,
  }) = _ScreenLayoutModel;

  factory ScreenLayoutModel.fromJson(Map<String, dynamic> json) =>
      _$ScreenLayoutModelFromJson(json);
}

@freezed
class ScreenSeatsModel with _$ScreenSeatsModel {
  const factory ScreenSeatsModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'theater_name') String? theaterName,
    @JsonKey(name: 'screen') String? screen,
    @JsonKey(name: 'screen_id') String? screenId,
    @JsonKey(name: 'section') String? section,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'seats') String? seats,
    @JsonKey(name: 'block_permission') bool? blockPermission,
    @JsonKey(name: 'max_blocked_seat_no') String? maxBlockedSeatNo,
    @JsonKey(name: 'row') String? row,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'seat_layout') List<ScreenRowModel>? seatLayout,
  }) = _ScreenSeatsModel;

  factory ScreenSeatsModel.fromJson(Map<String, dynamic> json) =>
      _$ScreenSeatsModelFromJson(json);
}

@freezed
class ScreenRowModel with _$ScreenRowModel {
  const factory ScreenRowModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'row') String? row,
    @JsonKey(name: 'seats') String? seats,
    @JsonKey(name: 'gap_seats') String? gapSeats,
    @JsonKey(name: 'gap_amounts') String? gapAmounts,
  }) = _ScreenRowModel;

  factory ScreenRowModel.fromJson(Map<String, dynamic> json) =>
      _$ScreenRowModelFromJson(json);
}
