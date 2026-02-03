import 'package:freezed_annotation/freezed_annotation.dart';
part 'theaters_model.freezed.dart';
part 'theaters_model.g.dart';

@freezed
class TheaterListModel with _$TheaterListModel {
  const factory TheaterListModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'currentPage') int? currentPage,
    @JsonKey(name: 'theaters') List<TheaterModel>? theaters,
  }) = _TheaterListModel;

  factory TheaterListModel.fromJson(Map<String, dynamic> json) =>
      _$TheaterListModelFromJson(json);
}

@freezed
class TheaterModel with _$TheaterModel {
  const factory TheaterModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'status') String? status,
  }) = _TheaterModel;

  factory TheaterModel.fromJson(Map<String, dynamic> json) =>
      _$TheaterModelFromJson(json);
}
