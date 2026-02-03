import 'package:freezed_annotation/freezed_annotation.dart';
part 'cities_model.freezed.dart';
part 'cities_model.g.dart';

@freezed
class CityListModel with _$CityListModel {
  const factory CityListModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'cities') List<CityModel>? cities,
  }) = _CityListModel;

  factory CityListModel.fromJson(Map<String, dynamic> json) =>
      _$CityListModelFromJson(json);
}

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    @JsonKey(name: 'city') String? name,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
