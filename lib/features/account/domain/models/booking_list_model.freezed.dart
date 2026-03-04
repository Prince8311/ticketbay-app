// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingListModel _$BookingListModelFromJson(Map<String, dynamic> json) {
  return _BookingListModel.fromJson(json);
}

/// @nodoc
mixin _$BookingListModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'list')
  List<TicketModel>? get list => throw _privateConstructorUsedError;

  /// Serializes this BookingListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingListModelCopyWith<BookingListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingListModelCopyWith<$Res> {
  factory $BookingListModelCopyWith(
          BookingListModel value, $Res Function(BookingListModel) then) =
      _$BookingListModelCopyWithImpl<$Res, BookingListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'currentPage') int? currentPage,
      @JsonKey(name: 'list') List<TicketModel>? list});
}

/// @nodoc
class _$BookingListModelCopyWithImpl<$Res, $Val extends BookingListModel>
    implements $BookingListModelCopyWith<$Res> {
  _$BookingListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
    Object? list = freezed,
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
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingListModelImplCopyWith<$Res>
    implements $BookingListModelCopyWith<$Res> {
  factory _$$BookingListModelImplCopyWith(_$BookingListModelImpl value,
          $Res Function(_$BookingListModelImpl) then) =
      __$$BookingListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'currentPage') int? currentPage,
      @JsonKey(name: 'list') List<TicketModel>? list});
}

/// @nodoc
class __$$BookingListModelImplCopyWithImpl<$Res>
    extends _$BookingListModelCopyWithImpl<$Res, _$BookingListModelImpl>
    implements _$$BookingListModelImplCopyWith<$Res> {
  __$$BookingListModelImplCopyWithImpl(_$BookingListModelImpl _value,
      $Res Function(_$BookingListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
    Object? list = freezed,
  }) {
    return _then(_$BookingListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<TicketModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingListModelImpl implements _BookingListModel {
  const _$BookingListModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'currentPage') this.currentPage,
      @JsonKey(name: 'list') final List<TicketModel>? list})
      : _list = list;

  factory _$BookingListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingListModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @override
  @JsonKey(name: 'currentPage')
  final int? currentPage;
  final List<TicketModel>? _list;
  @override
  @JsonKey(name: 'list')
  List<TicketModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingListModel(status: $status, message: $message, totalCount: $totalCount, currentPage: $currentPage, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, totalCount,
      currentPage, const DeepCollectionEquality().hash(_list));

  /// Create a copy of BookingListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingListModelImplCopyWith<_$BookingListModelImpl> get copyWith =>
      __$$BookingListModelImplCopyWithImpl<_$BookingListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingListModelImplToJson(
      this,
    );
  }
}

abstract class _BookingListModel implements BookingListModel {
  const factory _BookingListModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'currentPage') final int? currentPage,
          @JsonKey(name: 'list') final List<TicketModel>? list}) =
      _$BookingListModelImpl;

  factory _BookingListModel.fromJson(Map<String, dynamic> json) =
      _$BookingListModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @override
  @JsonKey(name: 'currentPage')
  int? get currentPage;
  @override
  @JsonKey(name: 'list')
  List<TicketModel>? get list;

  /// Create a copy of BookingListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingListModelImplCopyWith<_$BookingListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketModel _$TicketModelFromJson(Map<String, dynamic> json) {
  return _TicketModel.fromJson(json);
}

/// @nodoc
mixin _$TicketModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_id')
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'theater_name')
  String? get theaterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'movie_name')
  String? get movieName => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'valid_date')
  String? get validDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'valid_time')
  String? get validTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen')
  String? get screen => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen_id')
  String? get screenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'seats')
  String? get seats => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_convenience')
  String? get baseConvenience => throw _privateConstructorUsedError;
  @JsonKey(name: 'gst')
  String? get gst => throw _privateConstructorUsedError;
  @JsonKey(name: 'theater_commission')
  String? get theaterCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchant_transaction_id')
  String? get merchantTransactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_image')
  String? get posterImage => throw _privateConstructorUsedError;

  /// Serializes this TicketModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketModelCopyWith<TicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketModelCopyWith<$Res> {
  factory $TicketModelCopyWith(
          TicketModel value, $Res Function(TicketModel) then) =
      _$TicketModelCopyWithImpl<$Res, TicketModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'booking_id') String? bookingId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'theater_name') String? theaterName,
      @JsonKey(name: 'movie_name') String? movieName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'valid_date') String? validDate,
      @JsonKey(name: 'valid_time') String? validTime,
      @JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'screen_id') String? screenId,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'seats') String? seats,
      @JsonKey(name: 'base_convenience') String? baseConvenience,
      @JsonKey(name: 'gst') String? gst,
      @JsonKey(name: 'theater_commission') String? theaterCommission,
      @JsonKey(name: 'merchant_transaction_id') String? merchantTransactionId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'poster_image') String? posterImage});
}

/// @nodoc
class _$TicketModelCopyWithImpl<$Res, $Val extends TicketModel>
    implements $TicketModelCopyWith<$Res> {
  _$TicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? username = freezed,
    Object? theaterName = freezed,
    Object? movieName = freezed,
    Object? language = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? startDate = freezed,
    Object? startTime = freezed,
    Object? validDate = freezed,
    Object? validTime = freezed,
    Object? screen = freezed,
    Object? screenId = freezed,
    Object? section = freezed,
    Object? seats = freezed,
    Object? baseConvenience = freezed,
    Object? gst = freezed,
    Object? theaterCommission = freezed,
    Object? merchantTransactionId = freezed,
    Object? status = freezed,
    Object? posterImage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
              as String?,
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      validDate: freezed == validDate
          ? _value.validDate
          : validDate // ignore: cast_nullable_to_non_nullable
              as String?,
      validTime: freezed == validTime
          ? _value.validTime
          : validTime // ignore: cast_nullable_to_non_nullable
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
      baseConvenience: freezed == baseConvenience
          ? _value.baseConvenience
          : baseConvenience // ignore: cast_nullable_to_non_nullable
              as String?,
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterCommission: freezed == theaterCommission
          ? _value.theaterCommission
          : theaterCommission // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTransactionId: freezed == merchantTransactionId
          ? _value.merchantTransactionId
          : merchantTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketModelImplCopyWith<$Res>
    implements $TicketModelCopyWith<$Res> {
  factory _$$TicketModelImplCopyWith(
          _$TicketModelImpl value, $Res Function(_$TicketModelImpl) then) =
      __$$TicketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'booking_id') String? bookingId,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'theater_name') String? theaterName,
      @JsonKey(name: 'movie_name') String? movieName,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'valid_date') String? validDate,
      @JsonKey(name: 'valid_time') String? validTime,
      @JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'screen_id') String? screenId,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'seats') String? seats,
      @JsonKey(name: 'base_convenience') String? baseConvenience,
      @JsonKey(name: 'gst') String? gst,
      @JsonKey(name: 'theater_commission') String? theaterCommission,
      @JsonKey(name: 'merchant_transaction_id') String? merchantTransactionId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'poster_image') String? posterImage});
}

/// @nodoc
class __$$TicketModelImplCopyWithImpl<$Res>
    extends _$TicketModelCopyWithImpl<$Res, _$TicketModelImpl>
    implements _$$TicketModelImplCopyWith<$Res> {
  __$$TicketModelImplCopyWithImpl(
      _$TicketModelImpl _value, $Res Function(_$TicketModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = freezed,
    Object? username = freezed,
    Object? theaterName = freezed,
    Object? movieName = freezed,
    Object? language = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? startDate = freezed,
    Object? startTime = freezed,
    Object? validDate = freezed,
    Object? validTime = freezed,
    Object? screen = freezed,
    Object? screenId = freezed,
    Object? section = freezed,
    Object? seats = freezed,
    Object? baseConvenience = freezed,
    Object? gst = freezed,
    Object? theaterCommission = freezed,
    Object? merchantTransactionId = freezed,
    Object? status = freezed,
    Object? posterImage = freezed,
  }) {
    return _then(_$TicketModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
              as String?,
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
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
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      validDate: freezed == validDate
          ? _value.validDate
          : validDate // ignore: cast_nullable_to_non_nullable
              as String?,
      validTime: freezed == validTime
          ? _value.validTime
          : validTime // ignore: cast_nullable_to_non_nullable
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
      baseConvenience: freezed == baseConvenience
          ? _value.baseConvenience
          : baseConvenience // ignore: cast_nullable_to_non_nullable
              as String?,
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterCommission: freezed == theaterCommission
          ? _value.theaterCommission
          : theaterCommission // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTransactionId: freezed == merchantTransactionId
          ? _value.merchantTransactionId
          : merchantTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketModelImpl implements _TicketModel {
  const _$TicketModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'booking_id') this.bookingId,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'theater_name') this.theaterName,
      @JsonKey(name: 'movie_name') this.movieName,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'day') this.day,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'valid_date') this.validDate,
      @JsonKey(name: 'valid_time') this.validTime,
      @JsonKey(name: 'screen') this.screen,
      @JsonKey(name: 'screen_id') this.screenId,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'seats') this.seats,
      @JsonKey(name: 'base_convenience') this.baseConvenience,
      @JsonKey(name: 'gst') this.gst,
      @JsonKey(name: 'theater_commission') this.theaterCommission,
      @JsonKey(name: 'merchant_transaction_id') this.merchantTransactionId,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'poster_image') this.posterImage});

  factory _$TicketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'booking_id')
  final String? bookingId;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'theater_name')
  final String? theaterName;
  @override
  @JsonKey(name: 'movie_name')
  final String? movieName;
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
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'valid_date')
  final String? validDate;
  @override
  @JsonKey(name: 'valid_time')
  final String? validTime;
  @override
  @JsonKey(name: 'screen')
  final String? screen;
  @override
  @JsonKey(name: 'screen_id')
  final String? screenId;
  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'seats')
  final String? seats;
  @override
  @JsonKey(name: 'base_convenience')
  final String? baseConvenience;
  @override
  @JsonKey(name: 'gst')
  final String? gst;
  @override
  @JsonKey(name: 'theater_commission')
  final String? theaterCommission;
  @override
  @JsonKey(name: 'merchant_transaction_id')
  final String? merchantTransactionId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'poster_image')
  final String? posterImage;

  @override
  String toString() {
    return 'TicketModel(id: $id, bookingId: $bookingId, username: $username, theaterName: $theaterName, movieName: $movieName, language: $language, format: $format, day: $day, startDate: $startDate, startTime: $startTime, validDate: $validDate, validTime: $validTime, screen: $screen, screenId: $screenId, section: $section, seats: $seats, baseConvenience: $baseConvenience, gst: $gst, theaterCommission: $theaterCommission, merchantTransactionId: $merchantTransactionId, status: $status, posterImage: $posterImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.theaterName, theaterName) ||
                other.theaterName == theaterName) &&
            (identical(other.movieName, movieName) ||
                other.movieName == movieName) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.validDate, validDate) ||
                other.validDate == validDate) &&
            (identical(other.validTime, validTime) ||
                other.validTime == validTime) &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.screenId, screenId) ||
                other.screenId == screenId) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.baseConvenience, baseConvenience) ||
                other.baseConvenience == baseConvenience) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.theaterCommission, theaterCommission) ||
                other.theaterCommission == theaterCommission) &&
            (identical(other.merchantTransactionId, merchantTransactionId) ||
                other.merchantTransactionId == merchantTransactionId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.posterImage, posterImage) ||
                other.posterImage == posterImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        bookingId,
        username,
        theaterName,
        movieName,
        language,
        format,
        day,
        startDate,
        startTime,
        validDate,
        validTime,
        screen,
        screenId,
        section,
        seats,
        baseConvenience,
        gst,
        theaterCommission,
        merchantTransactionId,
        status,
        posterImage
      ]);

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      __$$TicketModelImplCopyWithImpl<_$TicketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketModelImplToJson(
      this,
    );
  }
}

abstract class _TicketModel implements TicketModel {
  const factory _TicketModel(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'booking_id') final String? bookingId,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'theater_name') final String? theaterName,
          @JsonKey(name: 'movie_name') final String? movieName,
          @JsonKey(name: 'language') final String? language,
          @JsonKey(name: 'format') final String? format,
          @JsonKey(name: 'day') final String? day,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'start_time') final String? startTime,
          @JsonKey(name: 'valid_date') final String? validDate,
          @JsonKey(name: 'valid_time') final String? validTime,
          @JsonKey(name: 'screen') final String? screen,
          @JsonKey(name: 'screen_id') final String? screenId,
          @JsonKey(name: 'section') final String? section,
          @JsonKey(name: 'seats') final String? seats,
          @JsonKey(name: 'base_convenience') final String? baseConvenience,
          @JsonKey(name: 'gst') final String? gst,
          @JsonKey(name: 'theater_commission') final String? theaterCommission,
          @JsonKey(name: 'merchant_transaction_id')
          final String? merchantTransactionId,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'poster_image') final String? posterImage}) =
      _$TicketModelImpl;

  factory _TicketModel.fromJson(Map<String, dynamic> json) =
      _$TicketModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'booking_id')
  String? get bookingId;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'theater_name')
  String? get theaterName;
  @override
  @JsonKey(name: 'movie_name')
  String? get movieName;
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
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'valid_date')
  String? get validDate;
  @override
  @JsonKey(name: 'valid_time')
  String? get validTime;
  @override
  @JsonKey(name: 'screen')
  String? get screen;
  @override
  @JsonKey(name: 'screen_id')
  String? get screenId;
  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'seats')
  String? get seats;
  @override
  @JsonKey(name: 'base_convenience')
  String? get baseConvenience;
  @override
  @JsonKey(name: 'gst')
  String? get gst;
  @override
  @JsonKey(name: 'theater_commission')
  String? get theaterCommission;
  @override
  @JsonKey(name: 'merchant_transaction_id')
  String? get merchantTransactionId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'poster_image')
  String? get posterImage;

  /// Create a copy of TicketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketModelImplCopyWith<_$TicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
