// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingInfoModelImpl _$$BookingInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingInfoModelImpl(
      userName: json['userName'] as String?,
      userEmail: json['userEmail'] as String?,
      userPhone: json['userPhone'] as String?,
      movieName: json['movieName'] as String?,
      theaterName: json['theaterName'] as String?,
      language: json['language'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      screen: json['screen'] as String?,
      price: (json['price'] as num?)?.toInt(),
      bookingId: json['bookingId'] as String?,
      adminCommission: (json['adminCommission'] as num?)?.toInt(),
      theaterCommission: (json['theaterCommission'] as num?)?.toInt(),
      section: json['section'] as String?,
    );

Map<String, dynamic> _$$BookingInfoModelImplToJson(
        _$BookingInfoModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'userPhone': instance.userPhone,
      'movieName': instance.movieName,
      'theaterName': instance.theaterName,
      'language': instance.language,
      'format': instance.format,
      'day': instance.day,
      'date': instance.date,
      'time': instance.time,
      'screen': instance.screen,
      'price': instance.price,
      'bookingId': instance.bookingId,
      'adminCommission': instance.adminCommission,
      'theaterCommission': instance.theaterCommission,
      'section': instance.section,
    };

_$SeatReserveRequestImpl _$$SeatReserveRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SeatReserveRequestImpl(
      userName: json['userName'] as String?,
      movieName: json['movieName'] as String?,
      theaterName: json['theaterName'] as String?,
      language: json['language'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      startTime: json['startTime'] as String?,
      startDate: json['startDate'] as String?,
      screen: json['screen'] as String?,
      screenId: json['screenId'] as String?,
      section: json['section'] as String?,
      seats: json['seats'] as String?,
    );

Map<String, dynamic> _$$SeatReserveRequestImplToJson(
        _$SeatReserveRequestImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'movieName': instance.movieName,
      'theaterName': instance.theaterName,
      'language': instance.language,
      'format': instance.format,
      'day': instance.day,
      'startTime': instance.startTime,
      'startDate': instance.startDate,
      'screen': instance.screen,
      'screenId': instance.screenId,
      'section': instance.section,
      'seats': instance.seats,
    };

_$SeatReserveResponseImpl _$$SeatReserveResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SeatReserveResponseImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      bookingId: json['bookingId'] as String?,
    );

Map<String, dynamic> _$$SeatReserveResponseImplToJson(
        _$SeatReserveResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'bookingId': instance.bookingId,
    };

_$PaymentCredentialsRequestImpl _$$PaymentCredentialsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentCredentialsRequestImpl(
      bookingId: json['bookingId'] as String?,
      userName: json['userName'] as String?,
      userEmail: json['userEmail'] as String?,
      userPhone: json['userPhone'] as String?,
      theaterName: json['theaterName'] as String?,
      movieName: json['movieName'] as String?,
      ticketPrice: json['ticketPrice'] as String?,
      baseConvenience: json['baseConvenience'] as String?,
      gst: json['gst'] as String?,
      theaterCommission: json['theaterCommission'] as String?,
    );

Map<String, dynamic> _$$PaymentCredentialsRequestImplToJson(
        _$PaymentCredentialsRequestImpl instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'userPhone': instance.userPhone,
      'theaterName': instance.theaterName,
      'movieName': instance.movieName,
      'ticketPrice': instance.ticketPrice,
      'baseConvenience': instance.baseConvenience,
      'gst': instance.gst,
      'theaterCommission': instance.theaterCommission,
    };

_$PaymentCredentialsResponseImpl _$$PaymentCredentialsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentCredentialsResponseImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      body: json['body'] as String?,
      checksum: json['checksum'] as String?,
      merchantId: json['merchantId'] as String?,
      merchantTransactionId: json['merchantTransactionId'] as String?,
      callbackUrl: json['callbackUrl'] as String?,
      apiEndPoint: json['apiEndPoint'] as String?,
      environment: json['environment'] as String?,
    );

Map<String, dynamic> _$$PaymentCredentialsResponseImplToJson(
        _$PaymentCredentialsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'body': instance.body,
      'checksum': instance.checksum,
      'merchantId': instance.merchantId,
      'merchantTransactionId': instance.merchantTransactionId,
      'callbackUrl': instance.callbackUrl,
      'apiEndPoint': instance.apiEndPoint,
      'environment': instance.environment,
    };
