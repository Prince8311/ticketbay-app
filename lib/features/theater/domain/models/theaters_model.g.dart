// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theaters_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TheaterListModelImpl _$$TheaterListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TheaterListModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      totalCount: (json['totalCount'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      theaters: (json['theaters'] as List<dynamic>?)
          ?.map((e) => TheaterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TheaterListModelImplToJson(
        _$TheaterListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'theaters': instance.theaters,
    };

_$TheaterModelImpl _$$TheaterModelImplFromJson(Map<String, dynamic> json) =>
    _$TheaterModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      state: json['state'] as String?,
      city: json['city'] as String?,
      location: json['location'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$TheaterModelImplToJson(_$TheaterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'city': instance.city,
      'location': instance.location,
      'status': instance.status,
    };
