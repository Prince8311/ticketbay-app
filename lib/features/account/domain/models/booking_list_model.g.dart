// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingListModelImpl _$$BookingListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingListModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      totalCount: (json['totalCount'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => TicketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookingListModelImplToJson(
        _$BookingListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'list': instance.list,
    };

_$TicketModelImpl _$$TicketModelImplFromJson(Map<String, dynamic> json) =>
    _$TicketModelImpl(
      id: json['id'] as String?,
      bookingId: json['booking_id'] as String?,
      username: json['username'] as String?,
      theaterName: json['theater_name'] as String?,
      movieName: json['movie_name'] as String?,
      language: json['language'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      startDate: json['start_date'] as String?,
      startTime: json['start_time'] as String?,
      validDate: json['valid_date'] as String?,
      validTime: json['valid_time'] as String?,
      screen: json['screen'] as String?,
      screenId: json['screen_id'] as String?,
      section: json['section'] as String?,
      seats: json['seats'] as String?,
      baseConvenience: json['base_convenience'] as String?,
      gst: json['gst'] as String?,
      theaterCommission: json['theater_commission'] as String?,
      merchantTransactionId: json['merchant_transaction_id'] as String?,
      status: json['status'] as String?,
      posterImage: json['poster_image'] as String?,
    );

Map<String, dynamic> _$$TicketModelImplToJson(_$TicketModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.bookingId,
      'username': instance.username,
      'theater_name': instance.theaterName,
      'movie_name': instance.movieName,
      'language': instance.language,
      'format': instance.format,
      'day': instance.day,
      'start_date': instance.startDate,
      'start_time': instance.startTime,
      'valid_date': instance.validDate,
      'valid_time': instance.validTime,
      'screen': instance.screen,
      'screen_id': instance.screenId,
      'section': instance.section,
      'seats': instance.seats,
      'base_convenience': instance.baseConvenience,
      'gst': instance.gst,
      'theater_commission': instance.theaterCommission,
      'merchant_transaction_id': instance.merchantTransactionId,
      'status': instance.status,
      'poster_image': instance.posterImage,
    };
