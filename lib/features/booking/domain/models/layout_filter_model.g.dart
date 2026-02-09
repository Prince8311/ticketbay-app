// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeatLayoutInfoModelImpl _$$SeatLayoutInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SeatLayoutInfoModelImpl(
      movieName: json['movieName'] as String?,
      theaterName: json['theaterName'] as String?,
      language: json['language'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      screen: json['screen'] as String?,
      screenId: json['screenId'] as String?,
    );

Map<String, dynamic> _$$SeatLayoutInfoModelImplToJson(
        _$SeatLayoutInfoModelImpl instance) =>
    <String, dynamic>{
      'movieName': instance.movieName,
      'theaterName': instance.theaterName,
      'language': instance.language,
      'format': instance.format,
      'day': instance.day,
      'date': instance.date,
      'time': instance.time,
      'screen': instance.screen,
      'screenId': instance.screenId,
    };
