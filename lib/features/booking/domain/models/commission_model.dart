import 'package:freezed_annotation/freezed_annotation.dart';
part 'commission_model.freezed.dart';
part 'commission_model.g.dart';

@freezed
class CommissionModel with _$CommissionModel {
  const factory CommissionModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'theaterCommissionType') String? theaterCommissionType,
    @JsonKey(name: 'theaterCommission') int? theaterCommission,
    @JsonKey(name: 'adminCommission') int? adminCommission,
  }) = _CommissionModel;

  factory CommissionModel.fromJson(Map<String, dynamic> json) =>
      _$CommissionModelFromJson(json);
}
