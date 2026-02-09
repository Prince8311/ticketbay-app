// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_layout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScreenSectionsModelImpl _$$ScreenSectionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScreenSectionsModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScreenSectionsModelImplToJson(
        _$ScreenSectionsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'sections': instance.sections,
    };

_$SectionItemImpl _$$SectionItemImplFromJson(Map<String, dynamic> json) =>
    _$SectionItemImpl(
      section: json['section'] as String?,
      sectionName: json['section_name'] as String?,
      seats: json['seats'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$SectionItemImplToJson(_$SectionItemImpl instance) =>
    <String, dynamic>{
      'section': instance.section,
      'section_name': instance.sectionName,
      'seats': instance.seats,
      'price': instance.price,
    };

_$ScreenLayoutModelImpl _$$ScreenLayoutModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScreenLayoutModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      seatData: (json['seatData'] as List<dynamic>?)
          ?.map((e) => ScreenSeatsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScreenLayoutModelImplToJson(
        _$ScreenLayoutModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'seatData': instance.seatData,
    };

_$ScreenSeatsModelImpl _$$ScreenSeatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScreenSeatsModelImpl(
      id: json['id'] as String?,
      theaterName: json['theater_name'] as String?,
      screen: json['screen'] as String?,
      screenId: json['screen_id'] as String?,
      section: json['section'] as String?,
      sectionName: json['section_name'] as String?,
      seats: json['seats'] as String?,
      blockPermission: json['block_permission'] as bool?,
      maxBlockedSeatNo: json['max_blocked_seat_no'] as String?,
      row: json['row'] as String?,
      price: json['price'] as String?,
      seatLayout: (json['seat_layout'] as List<dynamic>?)
          ?.map((e) => ScreenRowModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScreenSeatsModelImplToJson(
        _$ScreenSeatsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'theater_name': instance.theaterName,
      'screen': instance.screen,
      'screen_id': instance.screenId,
      'section': instance.section,
      'section_name': instance.sectionName,
      'seats': instance.seats,
      'block_permission': instance.blockPermission,
      'max_blocked_seat_no': instance.maxBlockedSeatNo,
      'row': instance.row,
      'price': instance.price,
      'seat_layout': instance.seatLayout,
    };

_$ScreenRowModelImpl _$$ScreenRowModelImplFromJson(Map<String, dynamic> json) =>
    _$ScreenRowModelImpl(
      id: json['id'] as String?,
      row: json['row'] as String?,
      seats: json['seats'] as String?,
      gapSeats: json['gap_seats'] as String?,
      gapAmounts: json['gap_amounts'] as String?,
    );

Map<String, dynamic> _$$ScreenRowModelImplToJson(
        _$ScreenRowModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'row': instance.row,
      'seats': instance.seats,
      'gap_seats': instance.gapSeats,
      'gap_amounts': instance.gapAmounts,
    };
