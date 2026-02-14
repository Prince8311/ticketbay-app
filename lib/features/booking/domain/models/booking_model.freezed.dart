// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingInfoModel _$BookingInfoModelFromJson(Map<String, dynamic> json) {
  return _BookingInfoModel.fromJson(json);
}

/// @nodoc
mixin _$BookingInfoModel {
  @JsonKey(name: 'movieName')
  String? get movieName => throw _privateConstructorUsedError;
  @JsonKey(name: 'theaterName')
  String? get theaterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen')
  String? get screen => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'adminCommission')
  int? get adminCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'theaterCommission')
  int? get theaterCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;

  /// Serializes this BookingInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingInfoModelCopyWith<BookingInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingInfoModelCopyWith<$Res> {
  factory $BookingInfoModelCopyWith(
          BookingInfoModel value, $Res Function(BookingInfoModel) then) =
      _$BookingInfoModelCopyWithImpl<$Res, BookingInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'movieName') String? movieName,
      @JsonKey(name: 'theaterName') String? theaterName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'adminCommission') int? adminCommission,
      @JsonKey(name: 'theaterCommission') int? theaterCommission,
      @JsonKey(name: 'section') String? section});
}

/// @nodoc
class _$BookingInfoModelCopyWithImpl<$Res, $Val extends BookingInfoModel>
    implements $BookingInfoModelCopyWith<$Res> {
  _$BookingInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieName = freezed,
    Object? theaterName = freezed,
    Object? language = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? screen = freezed,
    Object? price = freezed,
    Object? adminCommission = freezed,
    Object? theaterCommission = freezed,
    Object? section = freezed,
  }) {
    return _then(_value.copyWith(
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      adminCommission: freezed == adminCommission
          ? _value.adminCommission
          : adminCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      theaterCommission: freezed == theaterCommission
          ? _value.theaterCommission
          : theaterCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingInfoModelImplCopyWith<$Res>
    implements $BookingInfoModelCopyWith<$Res> {
  factory _$$BookingInfoModelImplCopyWith(_$BookingInfoModelImpl value,
          $Res Function(_$BookingInfoModelImpl) then) =
      __$$BookingInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'movieName') String? movieName,
      @JsonKey(name: 'theaterName') String? theaterName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'adminCommission') int? adminCommission,
      @JsonKey(name: 'theaterCommission') int? theaterCommission,
      @JsonKey(name: 'section') String? section});
}

/// @nodoc
class __$$BookingInfoModelImplCopyWithImpl<$Res>
    extends _$BookingInfoModelCopyWithImpl<$Res, _$BookingInfoModelImpl>
    implements _$$BookingInfoModelImplCopyWith<$Res> {
  __$$BookingInfoModelImplCopyWithImpl(_$BookingInfoModelImpl _value,
      $Res Function(_$BookingInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieName = freezed,
    Object? theaterName = freezed,
    Object? language = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? screen = freezed,
    Object? price = freezed,
    Object? adminCommission = freezed,
    Object? theaterCommission = freezed,
    Object? section = freezed,
  }) {
    return _then(_$BookingInfoModelImpl(
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      adminCommission: freezed == adminCommission
          ? _value.adminCommission
          : adminCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      theaterCommission: freezed == theaterCommission
          ? _value.theaterCommission
          : theaterCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingInfoModelImpl implements _BookingInfoModel {
  const _$BookingInfoModelImpl(
      {@JsonKey(name: 'movieName') this.movieName,
      @JsonKey(name: 'theaterName') this.theaterName,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'day') this.day,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'time') this.time,
      @JsonKey(name: 'screen') this.screen,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'adminCommission') this.adminCommission,
      @JsonKey(name: 'theaterCommission') this.theaterCommission,
      @JsonKey(name: 'section') this.section});

  factory _$BookingInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingInfoModelImplFromJson(json);

  @override
  @JsonKey(name: 'movieName')
  final String? movieName;
  @override
  @JsonKey(name: 'theaterName')
  final String? theaterName;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'day')
  final String? day;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'time')
  final String? time;
  @override
  @JsonKey(name: 'screen')
  final String? screen;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'adminCommission')
  final int? adminCommission;
  @override
  @JsonKey(name: 'theaterCommission')
  final int? theaterCommission;
  @override
  @JsonKey(name: 'section')
  final String? section;

  @override
  String toString() {
    return 'BookingInfoModel(movieName: $movieName, theaterName: $theaterName, language: $language, format: $format, day: $day, date: $date, time: $time, screen: $screen, price: $price, adminCommission: $adminCommission, theaterCommission: $theaterCommission, section: $section)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingInfoModelImpl &&
            (identical(other.movieName, movieName) ||
                other.movieName == movieName) &&
            (identical(other.theaterName, theaterName) ||
                other.theaterName == theaterName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.adminCommission, adminCommission) ||
                other.adminCommission == adminCommission) &&
            (identical(other.theaterCommission, theaterCommission) ||
                other.theaterCommission == theaterCommission) &&
            (identical(other.section, section) || other.section == section));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      movieName,
      theaterName,
      language,
      format,
      day,
      date,
      time,
      screen,
      price,
      adminCommission,
      theaterCommission,
      section);

  /// Create a copy of BookingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingInfoModelImplCopyWith<_$BookingInfoModelImpl> get copyWith =>
      __$$BookingInfoModelImplCopyWithImpl<_$BookingInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingInfoModelImplToJson(
      this,
    );
  }
}

abstract class _BookingInfoModel implements BookingInfoModel {
  const factory _BookingInfoModel(
          {@JsonKey(name: 'movieName') final String? movieName,
          @JsonKey(name: 'theaterName') final String? theaterName,
          @JsonKey(name: 'language') final String? language,
          @JsonKey(name: 'format') final String? format,
          @JsonKey(name: 'day') final String? day,
          @JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'time') final String? time,
          @JsonKey(name: 'screen') final String? screen,
          @JsonKey(name: 'price') final int? price,
          @JsonKey(name: 'adminCommission') final int? adminCommission,
          @JsonKey(name: 'theaterCommission') final int? theaterCommission,
          @JsonKey(name: 'section') final String? section}) =
      _$BookingInfoModelImpl;

  factory _BookingInfoModel.fromJson(Map<String, dynamic> json) =
      _$BookingInfoModelImpl.fromJson;

  @override
  @JsonKey(name: 'movieName')
  String? get movieName;
  @override
  @JsonKey(name: 'theaterName')
  String? get theaterName;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'day')
  String? get day;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(name: 'screen')
  String? get screen;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'adminCommission')
  int? get adminCommission;
  @override
  @JsonKey(name: 'theaterCommission')
  int? get theaterCommission;
  @override
  @JsonKey(name: 'section')
  String? get section;

  /// Create a copy of BookingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingInfoModelImplCopyWith<_$BookingInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeatReserveRequest _$SeatReserveRequestFromJson(Map<String, dynamic> json) {
  return _SeatReserveRequest.fromJson(json);
}

/// @nodoc
mixin _$SeatReserveRequest {
  @JsonKey(name: 'userName')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'movieName')
  String? get movieName => throw _privateConstructorUsedError;
  @JsonKey(name: 'theaterName')
  String? get theaterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'startTime')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'startDate')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen')
  String? get screen => throw _privateConstructorUsedError;
  @JsonKey(name: 'screenId')
  String? get screenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'seats')
  String? get seats => throw _privateConstructorUsedError;

  /// Serializes this SeatReserveRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeatReserveRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeatReserveRequestCopyWith<SeatReserveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatReserveRequestCopyWith<$Res> {
  factory $SeatReserveRequestCopyWith(
          SeatReserveRequest value, $Res Function(SeatReserveRequest) then) =
      _$SeatReserveRequestCopyWithImpl<$Res, SeatReserveRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'movieName') String? movieName,
      @JsonKey(name: 'theaterName') String? theaterName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'startDate') String? startDate,
      @JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'screenId') String? screenId,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'seats') String? seats});
}

/// @nodoc
class _$SeatReserveRequestCopyWithImpl<$Res, $Val extends SeatReserveRequest>
    implements $SeatReserveRequestCopyWith<$Res> {
  _$SeatReserveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeatReserveRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? movieName = freezed,
    Object? theaterName = freezed,
    Object? language = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? startDate = freezed,
    Object? screen = freezed,
    Object? screenId = freezed,
    Object? section = freezed,
    Object? seats = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
      screenId: freezed == screenId
          ? _value.screenId
          : screenId // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatReserveRequestImplCopyWith<$Res>
    implements $SeatReserveRequestCopyWith<$Res> {
  factory _$$SeatReserveRequestImplCopyWith(_$SeatReserveRequestImpl value,
          $Res Function(_$SeatReserveRequestImpl) then) =
      __$$SeatReserveRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'movieName') String? movieName,
      @JsonKey(name: 'theaterName') String? theaterName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'startTime') String? startTime,
      @JsonKey(name: 'startDate') String? startDate,
      @JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'screenId') String? screenId,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'seats') String? seats});
}

/// @nodoc
class __$$SeatReserveRequestImplCopyWithImpl<$Res>
    extends _$SeatReserveRequestCopyWithImpl<$Res, _$SeatReserveRequestImpl>
    implements _$$SeatReserveRequestImplCopyWith<$Res> {
  __$$SeatReserveRequestImplCopyWithImpl(_$SeatReserveRequestImpl _value,
      $Res Function(_$SeatReserveRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeatReserveRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? movieName = freezed,
    Object? theaterName = freezed,
    Object? language = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? startTime = freezed,
    Object? startDate = freezed,
    Object? screen = freezed,
    Object? screenId = freezed,
    Object? section = freezed,
    Object? seats = freezed,
  }) {
    return _then(_$SeatReserveRequestImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
      screenId: freezed == screenId
          ? _value.screenId
          : screenId // ignore: cast_nullable_to_non_nullable
              as String?,
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeatReserveRequestImpl implements _SeatReserveRequest {
  const _$SeatReserveRequestImpl(
      {@JsonKey(name: 'userName') this.userName,
      @JsonKey(name: 'movieName') this.movieName,
      @JsonKey(name: 'theaterName') this.theaterName,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'day') this.day,
      @JsonKey(name: 'startTime') this.startTime,
      @JsonKey(name: 'startDate') this.startDate,
      @JsonKey(name: 'screen') this.screen,
      @JsonKey(name: 'screenId') this.screenId,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'seats') this.seats});

  factory _$SeatReserveRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatReserveRequestImplFromJson(json);

  @override
  @JsonKey(name: 'userName')
  final String? userName;
  @override
  @JsonKey(name: 'movieName')
  final String? movieName;
  @override
  @JsonKey(name: 'theaterName')
  final String? theaterName;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'day')
  final String? day;
  @override
  @JsonKey(name: 'startTime')
  final String? startTime;
  @override
  @JsonKey(name: 'startDate')
  final String? startDate;
  @override
  @JsonKey(name: 'screen')
  final String? screen;
  @override
  @JsonKey(name: 'screenId')
  final String? screenId;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'seats')
  final String? seats;

  @override
  String toString() {
    return 'SeatReserveRequest(userName: $userName, movieName: $movieName, theaterName: $theaterName, language: $language, format: $format, day: $day, startTime: $startTime, startDate: $startDate, screen: $screen, screenId: $screenId, section: $section, seats: $seats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatReserveRequestImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.movieName, movieName) ||
                other.movieName == movieName) &&
            (identical(other.theaterName, theaterName) ||
                other.theaterName == theaterName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.screenId, screenId) ||
                other.screenId == screenId) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.seats, seats) || other.seats == seats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      movieName,
      theaterName,
      language,
      format,
      day,
      startTime,
      startDate,
      screen,
      screenId,
      section,
      seats);

  /// Create a copy of SeatReserveRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatReserveRequestImplCopyWith<_$SeatReserveRequestImpl> get copyWith =>
      __$$SeatReserveRequestImplCopyWithImpl<_$SeatReserveRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatReserveRequestImplToJson(
      this,
    );
  }
}

abstract class _SeatReserveRequest implements SeatReserveRequest {
  const factory _SeatReserveRequest(
      {@JsonKey(name: 'userName') final String? userName,
      @JsonKey(name: 'movieName') final String? movieName,
      @JsonKey(name: 'theaterName') final String? theaterName,
      @JsonKey(name: 'language') final String? language,
      @JsonKey(name: 'format') final String? format,
      @JsonKey(name: 'day') final String? day,
      @JsonKey(name: 'startTime') final String? startTime,
      @JsonKey(name: 'startDate') final String? startDate,
      @JsonKey(name: 'screen') final String? screen,
      @JsonKey(name: 'screenId') final String? screenId,
      @JsonKey(name: 'section') final String? section,
      @JsonKey(name: 'seats') final String? seats}) = _$SeatReserveRequestImpl;

  factory _SeatReserveRequest.fromJson(Map<String, dynamic> json) =
      _$SeatReserveRequestImpl.fromJson;

  @override
  @JsonKey(name: 'userName')
  String? get userName;
  @override
  @JsonKey(name: 'movieName')
  String? get movieName;
  @override
  @JsonKey(name: 'theaterName')
  String? get theaterName;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'day')
  String? get day;
  @override
  @JsonKey(name: 'startTime')
  String? get startTime;
  @override
  @JsonKey(name: 'startDate')
  String? get startDate;
  @override
  @JsonKey(name: 'screen')
  String? get screen;
  @override
  @JsonKey(name: 'screenId')
  String? get screenId;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'seats')
  String? get seats;

  /// Create a copy of SeatReserveRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeatReserveRequestImplCopyWith<_$SeatReserveRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeatReserveResponse _$SeatReserveResponseFromJson(Map<String, dynamic> json) {
  return _SeatReserveResponse.fromJson(json);
}

/// @nodoc
mixin _$SeatReserveResponse {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookingId')
  String? get bookingId => throw _privateConstructorUsedError;

  /// Serializes this SeatReserveResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeatReserveResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeatReserveResponseCopyWith<SeatReserveResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatReserveResponseCopyWith<$Res> {
  factory $SeatReserveResponseCopyWith(
          SeatReserveResponse value, $Res Function(SeatReserveResponse) then) =
      _$SeatReserveResponseCopyWithImpl<$Res, SeatReserveResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'bookingId') String? bookingId});
}

/// @nodoc
class _$SeatReserveResponseCopyWithImpl<$Res, $Val extends SeatReserveResponse>
    implements $SeatReserveResponseCopyWith<$Res> {
  _$SeatReserveResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeatReserveResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookingId = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeatReserveResponseImplCopyWith<$Res>
    implements $SeatReserveResponseCopyWith<$Res> {
  factory _$$SeatReserveResponseImplCopyWith(_$SeatReserveResponseImpl value,
          $Res Function(_$SeatReserveResponseImpl) then) =
      __$$SeatReserveResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'bookingId') String? bookingId});
}

/// @nodoc
class __$$SeatReserveResponseImplCopyWithImpl<$Res>
    extends _$SeatReserveResponseCopyWithImpl<$Res, _$SeatReserveResponseImpl>
    implements _$$SeatReserveResponseImplCopyWith<$Res> {
  __$$SeatReserveResponseImplCopyWithImpl(_$SeatReserveResponseImpl _value,
      $Res Function(_$SeatReserveResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeatReserveResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookingId = freezed,
  }) {
    return _then(_$SeatReserveResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeatReserveResponseImpl implements _SeatReserveResponse {
  const _$SeatReserveResponseImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'bookingId') this.bookingId});

  factory _$SeatReserveResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatReserveResponseImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'bookingId')
  final String? bookingId;

  @override
  String toString() {
    return 'SeatReserveResponse(status: $status, message: $message, bookingId: $bookingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatReserveResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, bookingId);

  /// Create a copy of SeatReserveResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatReserveResponseImplCopyWith<_$SeatReserveResponseImpl> get copyWith =>
      __$$SeatReserveResponseImplCopyWithImpl<_$SeatReserveResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatReserveResponseImplToJson(
      this,
    );
  }
}

abstract class _SeatReserveResponse implements SeatReserveResponse {
  const factory _SeatReserveResponse(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'bookingId') final String? bookingId}) =
      _$SeatReserveResponseImpl;

  factory _SeatReserveResponse.fromJson(Map<String, dynamic> json) =
      _$SeatReserveResponseImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'bookingId')
  String? get bookingId;

  /// Create a copy of SeatReserveResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeatReserveResponseImplCopyWith<_$SeatReserveResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
