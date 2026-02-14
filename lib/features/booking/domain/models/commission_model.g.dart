// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommissionModelImpl _$$CommissionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommissionModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      theaterCommissionType: json['theaterCommissionType'] as String?,
      theaterCommission: (json['theaterCommission'] as num?)?.toInt(),
      adminCommission: (json['adminCommission'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CommissionModelImplToJson(
        _$CommissionModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'theaterCommissionType': instance.theaterCommissionType,
      'theaterCommission': instance.theaterCommission,
      'adminCommission': instance.adminCommission,
    };
