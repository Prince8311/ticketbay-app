// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_layout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScreenSectionsModel _$ScreenSectionsModelFromJson(Map<String, dynamic> json) {
  return _ScreenSectionsModel.fromJson(json);
}

/// @nodoc
mixin _$ScreenSectionsModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'sections')
  List<SectionItem>? get sections => throw _privateConstructorUsedError;

  /// Serializes this ScreenSectionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreenSectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenSectionsModelCopyWith<ScreenSectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSectionsModelCopyWith<$Res> {
  factory $ScreenSectionsModelCopyWith(
          ScreenSectionsModel value, $Res Function(ScreenSectionsModel) then) =
      _$ScreenSectionsModelCopyWithImpl<$Res, ScreenSectionsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'sections') List<SectionItem>? sections});
}

/// @nodoc
class _$ScreenSectionsModelCopyWithImpl<$Res, $Val extends ScreenSectionsModel>
    implements $ScreenSectionsModelCopyWith<$Res> {
  _$ScreenSectionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenSectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? sections = freezed,
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
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenSectionsModelImplCopyWith<$Res>
    implements $ScreenSectionsModelCopyWith<$Res> {
  factory _$$ScreenSectionsModelImplCopyWith(_$ScreenSectionsModelImpl value,
          $Res Function(_$ScreenSectionsModelImpl) then) =
      __$$ScreenSectionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'sections') List<SectionItem>? sections});
}

/// @nodoc
class __$$ScreenSectionsModelImplCopyWithImpl<$Res>
    extends _$ScreenSectionsModelCopyWithImpl<$Res, _$ScreenSectionsModelImpl>
    implements _$$ScreenSectionsModelImplCopyWith<$Res> {
  __$$ScreenSectionsModelImplCopyWithImpl(_$ScreenSectionsModelImpl _value,
      $Res Function(_$ScreenSectionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenSectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? sections = freezed,
  }) {
    return _then(_$ScreenSectionsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenSectionsModelImpl implements _ScreenSectionsModel {
  const _$ScreenSectionsModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'sections') final List<SectionItem>? sections})
      : _sections = sections;

  factory _$ScreenSectionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenSectionsModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<SectionItem>? _sections;
  @override
  @JsonKey(name: 'sections')
  List<SectionItem>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScreenSectionsModel(status: $status, message: $message, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenSectionsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_sections));

  /// Create a copy of ScreenSectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenSectionsModelImplCopyWith<_$ScreenSectionsModelImpl> get copyWith =>
      __$$ScreenSectionsModelImplCopyWithImpl<_$ScreenSectionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenSectionsModelImplToJson(
      this,
    );
  }
}

abstract class _ScreenSectionsModel implements ScreenSectionsModel {
  const factory _ScreenSectionsModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'sections') final List<SectionItem>? sections}) =
      _$ScreenSectionsModelImpl;

  factory _ScreenSectionsModel.fromJson(Map<String, dynamic> json) =
      _$ScreenSectionsModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'sections')
  List<SectionItem>? get sections;

  /// Create a copy of ScreenSectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenSectionsModelImplCopyWith<_$ScreenSectionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionItem _$SectionItemFromJson(Map<String, dynamic> json) {
  return _SectionItem.fromJson(json);
}

/// @nodoc
mixin _$SectionItem {
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'section_name')
  String? get sectionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'seats')
  String? get seats => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;

  /// Serializes this SectionItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SectionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionItemCopyWith<SectionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionItemCopyWith<$Res> {
  factory $SectionItemCopyWith(
          SectionItem value, $Res Function(SectionItem) then) =
      _$SectionItemCopyWithImpl<$Res, SectionItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'section') String? section,
      @JsonKey(name: 'section_name') String? sectionName,
      @JsonKey(name: 'seats') String? seats,
      @JsonKey(name: 'price') String? price});
}

/// @nodoc
class _$SectionItemCopyWithImpl<$Res, $Val extends SectionItem>
    implements $SectionItemCopyWith<$Res> {
  _$SectionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
    Object? sectionName = freezed,
    Object? seats = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionName: freezed == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionItemImplCopyWith<$Res>
    implements $SectionItemCopyWith<$Res> {
  factory _$$SectionItemImplCopyWith(
          _$SectionItemImpl value, $Res Function(_$SectionItemImpl) then) =
      __$$SectionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'section') String? section,
      @JsonKey(name: 'section_name') String? sectionName,
      @JsonKey(name: 'seats') String? seats,
      @JsonKey(name: 'price') String? price});
}

/// @nodoc
class __$$SectionItemImplCopyWithImpl<$Res>
    extends _$SectionItemCopyWithImpl<$Res, _$SectionItemImpl>
    implements _$$SectionItemImplCopyWith<$Res> {
  __$$SectionItemImplCopyWithImpl(
      _$SectionItemImpl _value, $Res Function(_$SectionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
    Object? sectionName = freezed,
    Object? seats = freezed,
    Object? price = freezed,
  }) {
    return _then(_$SectionItemImpl(
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionName: freezed == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionItemImpl implements _SectionItem {
  const _$SectionItemImpl(
      {@JsonKey(name: 'section') this.section,
      @JsonKey(name: 'section_name') this.sectionName,
      @JsonKey(name: 'seats') this.seats,
      @JsonKey(name: 'price') this.price});

  factory _$SectionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionItemImplFromJson(json);

  @override
  @JsonKey(name: 'section')
  final String? section;
  @override
  @JsonKey(name: 'section_name')
  final String? sectionName;
  @override
  @JsonKey(name: 'seats')
  final String? seats;
  @override
  @JsonKey(name: 'price')
  final String? price;

  @override
  String toString() {
    return 'SectionItem(section: $section, sectionName: $sectionName, seats: $seats, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionItemImpl &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, section, sectionName, seats, price);

  /// Create a copy of SectionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionItemImplCopyWith<_$SectionItemImpl> get copyWith =>
      __$$SectionItemImplCopyWithImpl<_$SectionItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionItemImplToJson(
      this,
    );
  }
}

abstract class _SectionItem implements SectionItem {
  const factory _SectionItem(
      {@JsonKey(name: 'section') final String? section,
      @JsonKey(name: 'section_name') final String? sectionName,
      @JsonKey(name: 'seats') final String? seats,
      @JsonKey(name: 'price') final String? price}) = _$SectionItemImpl;

  factory _SectionItem.fromJson(Map<String, dynamic> json) =
      _$SectionItemImpl.fromJson;

  @override
  @JsonKey(name: 'section')
  String? get section;
  @override
  @JsonKey(name: 'section_name')
  String? get sectionName;
  @override
  @JsonKey(name: 'seats')
  String? get seats;
  @override
  @JsonKey(name: 'price')
  String? get price;

  /// Create a copy of SectionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionItemImplCopyWith<_$SectionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScreenLayoutModel _$ScreenLayoutModelFromJson(Map<String, dynamic> json) {
  return _ScreenLayoutModel.fromJson(json);
}

/// @nodoc
mixin _$ScreenLayoutModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'seatData')
  List<ScreenSeatsModel>? get seatData => throw _privateConstructorUsedError;

  /// Serializes this ScreenLayoutModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreenLayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenLayoutModelCopyWith<ScreenLayoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenLayoutModelCopyWith<$Res> {
  factory $ScreenLayoutModelCopyWith(
          ScreenLayoutModel value, $Res Function(ScreenLayoutModel) then) =
      _$ScreenLayoutModelCopyWithImpl<$Res, ScreenLayoutModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'seatData') List<ScreenSeatsModel>? seatData});
}

/// @nodoc
class _$ScreenLayoutModelCopyWithImpl<$Res, $Val extends ScreenLayoutModel>
    implements $ScreenLayoutModelCopyWith<$Res> {
  _$ScreenLayoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenLayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? seatData = freezed,
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
      seatData: freezed == seatData
          ? _value.seatData
          : seatData // ignore: cast_nullable_to_non_nullable
              as List<ScreenSeatsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenLayoutModelImplCopyWith<$Res>
    implements $ScreenLayoutModelCopyWith<$Res> {
  factory _$$ScreenLayoutModelImplCopyWith(_$ScreenLayoutModelImpl value,
          $Res Function(_$ScreenLayoutModelImpl) then) =
      __$$ScreenLayoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'seatData') List<ScreenSeatsModel>? seatData});
}

/// @nodoc
class __$$ScreenLayoutModelImplCopyWithImpl<$Res>
    extends _$ScreenLayoutModelCopyWithImpl<$Res, _$ScreenLayoutModelImpl>
    implements _$$ScreenLayoutModelImplCopyWith<$Res> {
  __$$ScreenLayoutModelImplCopyWithImpl(_$ScreenLayoutModelImpl _value,
      $Res Function(_$ScreenLayoutModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenLayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? seatData = freezed,
  }) {
    return _then(_$ScreenLayoutModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      seatData: freezed == seatData
          ? _value._seatData
          : seatData // ignore: cast_nullable_to_non_nullable
              as List<ScreenSeatsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenLayoutModelImpl implements _ScreenLayoutModel {
  const _$ScreenLayoutModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'seatData') final List<ScreenSeatsModel>? seatData})
      : _seatData = seatData;

  factory _$ScreenLayoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenLayoutModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<ScreenSeatsModel>? _seatData;
  @override
  @JsonKey(name: 'seatData')
  List<ScreenSeatsModel>? get seatData {
    final value = _seatData;
    if (value == null) return null;
    if (_seatData is EqualUnmodifiableListView) return _seatData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScreenLayoutModel(status: $status, message: $message, seatData: $seatData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenLayoutModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._seatData, _seatData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_seatData));

  /// Create a copy of ScreenLayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenLayoutModelImplCopyWith<_$ScreenLayoutModelImpl> get copyWith =>
      __$$ScreenLayoutModelImplCopyWithImpl<_$ScreenLayoutModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenLayoutModelImplToJson(
      this,
    );
  }
}

abstract class _ScreenLayoutModel implements ScreenLayoutModel {
  const factory _ScreenLayoutModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'seatData') final List<ScreenSeatsModel>? seatData}) =
      _$ScreenLayoutModelImpl;

  factory _ScreenLayoutModel.fromJson(Map<String, dynamic> json) =
      _$ScreenLayoutModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'seatData')
  List<ScreenSeatsModel>? get seatData;

  /// Create a copy of ScreenLayoutModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenLayoutModelImplCopyWith<_$ScreenLayoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScreenSeatsModel _$ScreenSeatsModelFromJson(Map<String, dynamic> json) {
  return _ScreenSeatsModel.fromJson(json);
}

/// @nodoc
mixin _$ScreenSeatsModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'theater_name')
  String? get theaterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen')
  String? get screen => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen_id')
  String? get screenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'section')
  String? get section => throw _privateConstructorUsedError;
  @JsonKey(name: 'section_name')
  String? get sectionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'seats')
  String? get seats => throw _privateConstructorUsedError;
  @JsonKey(name: 'block_permission')
  bool? get blockPermission => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_blocked_seat_no')
  String? get maxBlockedSeatNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'row')
  String? get row => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'seat_layout')
  List<ScreenRowModel>? get seatLayout => throw _privateConstructorUsedError;

  /// Serializes this ScreenSeatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreenSeatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenSeatsModelCopyWith<ScreenSeatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSeatsModelCopyWith<$Res> {
  factory $ScreenSeatsModelCopyWith(
          ScreenSeatsModel value, $Res Function(ScreenSeatsModel) then) =
      _$ScreenSeatsModelCopyWithImpl<$Res, ScreenSeatsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'theater_name') String? theaterName,
      @JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'screen_id') String? screenId,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'section_name') String? sectionName,
      @JsonKey(name: 'seats') String? seats,
      @JsonKey(name: 'block_permission') bool? blockPermission,
      @JsonKey(name: 'max_blocked_seat_no') String? maxBlockedSeatNo,
      @JsonKey(name: 'row') String? row,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'seat_layout') List<ScreenRowModel>? seatLayout});
}

/// @nodoc
class _$ScreenSeatsModelCopyWithImpl<$Res, $Val extends ScreenSeatsModel>
    implements $ScreenSeatsModelCopyWith<$Res> {
  _$ScreenSeatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenSeatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? theaterName = freezed,
    Object? screen = freezed,
    Object? screenId = freezed,
    Object? section = freezed,
    Object? sectionName = freezed,
    Object? seats = freezed,
    Object? blockPermission = freezed,
    Object? maxBlockedSeatNo = freezed,
    Object? row = freezed,
    Object? price = freezed,
    Object? seatLayout = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
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
      sectionName: freezed == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
      blockPermission: freezed == blockPermission
          ? _value.blockPermission
          : blockPermission // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxBlockedSeatNo: freezed == maxBlockedSeatNo
          ? _value.maxBlockedSeatNo
          : maxBlockedSeatNo // ignore: cast_nullable_to_non_nullable
              as String?,
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      seatLayout: freezed == seatLayout
          ? _value.seatLayout
          : seatLayout // ignore: cast_nullable_to_non_nullable
              as List<ScreenRowModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenSeatsModelImplCopyWith<$Res>
    implements $ScreenSeatsModelCopyWith<$Res> {
  factory _$$ScreenSeatsModelImplCopyWith(_$ScreenSeatsModelImpl value,
          $Res Function(_$ScreenSeatsModelImpl) then) =
      __$$ScreenSeatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'theater_name') String? theaterName,
      @JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'screen_id') String? screenId,
      @JsonKey(name: 'section') String? section,
      @JsonKey(name: 'section_name') String? sectionName,
      @JsonKey(name: 'seats') String? seats,
      @JsonKey(name: 'block_permission') bool? blockPermission,
      @JsonKey(name: 'max_blocked_seat_no') String? maxBlockedSeatNo,
      @JsonKey(name: 'row') String? row,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'seat_layout') List<ScreenRowModel>? seatLayout});
}

/// @nodoc
class __$$ScreenSeatsModelImplCopyWithImpl<$Res>
    extends _$ScreenSeatsModelCopyWithImpl<$Res, _$ScreenSeatsModelImpl>
    implements _$$ScreenSeatsModelImplCopyWith<$Res> {
  __$$ScreenSeatsModelImplCopyWithImpl(_$ScreenSeatsModelImpl _value,
      $Res Function(_$ScreenSeatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenSeatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? theaterName = freezed,
    Object? screen = freezed,
    Object? screenId = freezed,
    Object? section = freezed,
    Object? sectionName = freezed,
    Object? seats = freezed,
    Object? blockPermission = freezed,
    Object? maxBlockedSeatNo = freezed,
    Object? row = freezed,
    Object? price = freezed,
    Object? seatLayout = freezed,
  }) {
    return _then(_$ScreenSeatsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
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
      sectionName: freezed == sectionName
          ? _value.sectionName
          : sectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
      blockPermission: freezed == blockPermission
          ? _value.blockPermission
          : blockPermission // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxBlockedSeatNo: freezed == maxBlockedSeatNo
          ? _value.maxBlockedSeatNo
          : maxBlockedSeatNo // ignore: cast_nullable_to_non_nullable
              as String?,
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      seatLayout: freezed == seatLayout
          ? _value._seatLayout
          : seatLayout // ignore: cast_nullable_to_non_nullable
              as List<ScreenRowModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenSeatsModelImpl implements _ScreenSeatsModel {
  const _$ScreenSeatsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'theater_name') this.theaterName,
      @JsonKey(name: 'screen') this.screen,
      @JsonKey(name: 'screen_id') this.screenId,
      @JsonKey(name: 'section') this.section,
      @JsonKey(name: 'section_name') this.sectionName,
      @JsonKey(name: 'seats') this.seats,
      @JsonKey(name: 'block_permission') this.blockPermission,
      @JsonKey(name: 'max_blocked_seat_no') this.maxBlockedSeatNo,
      @JsonKey(name: 'row') this.row,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'seat_layout') final List<ScreenRowModel>? seatLayout})
      : _seatLayout = seatLayout;

  factory _$ScreenSeatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenSeatsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'theater_name')
  final String? theaterName;
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
  @JsonKey(name: 'section_name')
  final String? sectionName;
  @override
  @JsonKey(name: 'seats')
  final String? seats;
  @override
  @JsonKey(name: 'block_permission')
  final bool? blockPermission;
  @override
  @JsonKey(name: 'max_blocked_seat_no')
  final String? maxBlockedSeatNo;
  @override
  @JsonKey(name: 'row')
  final String? row;
  @override
  @JsonKey(name: 'price')
  final String? price;
  final List<ScreenRowModel>? _seatLayout;
  @override
  @JsonKey(name: 'seat_layout')
  List<ScreenRowModel>? get seatLayout {
    final value = _seatLayout;
    if (value == null) return null;
    if (_seatLayout is EqualUnmodifiableListView) return _seatLayout;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScreenSeatsModel(id: $id, theaterName: $theaterName, screen: $screen, screenId: $screenId, section: $section, sectionName: $sectionName, seats: $seats, blockPermission: $blockPermission, maxBlockedSeatNo: $maxBlockedSeatNo, row: $row, price: $price, seatLayout: $seatLayout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenSeatsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.theaterName, theaterName) ||
                other.theaterName == theaterName) &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.screenId, screenId) ||
                other.screenId == screenId) &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.blockPermission, blockPermission) ||
                other.blockPermission == blockPermission) &&
            (identical(other.maxBlockedSeatNo, maxBlockedSeatNo) ||
                other.maxBlockedSeatNo == maxBlockedSeatNo) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._seatLayout, _seatLayout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      theaterName,
      screen,
      screenId,
      section,
      sectionName,
      seats,
      blockPermission,
      maxBlockedSeatNo,
      row,
      price,
      const DeepCollectionEquality().hash(_seatLayout));

  /// Create a copy of ScreenSeatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenSeatsModelImplCopyWith<_$ScreenSeatsModelImpl> get copyWith =>
      __$$ScreenSeatsModelImplCopyWithImpl<_$ScreenSeatsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenSeatsModelImplToJson(
      this,
    );
  }
}

abstract class _ScreenSeatsModel implements ScreenSeatsModel {
  const factory _ScreenSeatsModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'theater_name') final String? theaterName,
      @JsonKey(name: 'screen') final String? screen,
      @JsonKey(name: 'screen_id') final String? screenId,
      @JsonKey(name: 'section') final String? section,
      @JsonKey(name: 'section_name') final String? sectionName,
      @JsonKey(name: 'seats') final String? seats,
      @JsonKey(name: 'block_permission') final bool? blockPermission,
      @JsonKey(name: 'max_blocked_seat_no') final String? maxBlockedSeatNo,
      @JsonKey(name: 'row') final String? row,
      @JsonKey(name: 'price') final String? price,
      @JsonKey(name: 'seat_layout')
      final List<ScreenRowModel>? seatLayout}) = _$ScreenSeatsModelImpl;

  factory _ScreenSeatsModel.fromJson(Map<String, dynamic> json) =
      _$ScreenSeatsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'theater_name')
  String? get theaterName;
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
  @JsonKey(name: 'section_name')
  String? get sectionName;
  @override
  @JsonKey(name: 'seats')
  String? get seats;
  @override
  @JsonKey(name: 'block_permission')
  bool? get blockPermission;
  @override
  @JsonKey(name: 'max_blocked_seat_no')
  String? get maxBlockedSeatNo;
  @override
  @JsonKey(name: 'row')
  String? get row;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'seat_layout')
  List<ScreenRowModel>? get seatLayout;

  /// Create a copy of ScreenSeatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenSeatsModelImplCopyWith<_$ScreenSeatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScreenRowModel _$ScreenRowModelFromJson(Map<String, dynamic> json) {
  return _ScreenRowModel.fromJson(json);
}

/// @nodoc
mixin _$ScreenRowModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'row')
  String? get row => throw _privateConstructorUsedError;
  @JsonKey(name: 'seats')
  String? get seats => throw _privateConstructorUsedError;
  @JsonKey(name: 'gap_seats')
  String? get gapSeats => throw _privateConstructorUsedError;
  @JsonKey(name: 'gap_amounts')
  String? get gapAmounts => throw _privateConstructorUsedError;

  /// Serializes this ScreenRowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreenRowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreenRowModelCopyWith<ScreenRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenRowModelCopyWith<$Res> {
  factory $ScreenRowModelCopyWith(
          ScreenRowModel value, $Res Function(ScreenRowModel) then) =
      _$ScreenRowModelCopyWithImpl<$Res, ScreenRowModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'row') String? row,
      @JsonKey(name: 'seats') String? seats,
      @JsonKey(name: 'gap_seats') String? gapSeats,
      @JsonKey(name: 'gap_amounts') String? gapAmounts});
}

/// @nodoc
class _$ScreenRowModelCopyWithImpl<$Res, $Val extends ScreenRowModel>
    implements $ScreenRowModelCopyWith<$Res> {
  _$ScreenRowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreenRowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? row = freezed,
    Object? seats = freezed,
    Object? gapSeats = freezed,
    Object? gapAmounts = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
      gapSeats: freezed == gapSeats
          ? _value.gapSeats
          : gapSeats // ignore: cast_nullable_to_non_nullable
              as String?,
      gapAmounts: freezed == gapAmounts
          ? _value.gapAmounts
          : gapAmounts // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenRowModelImplCopyWith<$Res>
    implements $ScreenRowModelCopyWith<$Res> {
  factory _$$ScreenRowModelImplCopyWith(_$ScreenRowModelImpl value,
          $Res Function(_$ScreenRowModelImpl) then) =
      __$$ScreenRowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'row') String? row,
      @JsonKey(name: 'seats') String? seats,
      @JsonKey(name: 'gap_seats') String? gapSeats,
      @JsonKey(name: 'gap_amounts') String? gapAmounts});
}

/// @nodoc
class __$$ScreenRowModelImplCopyWithImpl<$Res>
    extends _$ScreenRowModelCopyWithImpl<$Res, _$ScreenRowModelImpl>
    implements _$$ScreenRowModelImplCopyWith<$Res> {
  __$$ScreenRowModelImplCopyWithImpl(
      _$ScreenRowModelImpl _value, $Res Function(_$ScreenRowModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScreenRowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? row = freezed,
    Object? seats = freezed,
    Object? gapSeats = freezed,
    Object? gapAmounts = freezed,
  }) {
    return _then(_$ScreenRowModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      row: freezed == row
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as String?,
      gapSeats: freezed == gapSeats
          ? _value.gapSeats
          : gapSeats // ignore: cast_nullable_to_non_nullable
              as String?,
      gapAmounts: freezed == gapAmounts
          ? _value.gapAmounts
          : gapAmounts // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenRowModelImpl implements _ScreenRowModel {
  const _$ScreenRowModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'row') this.row,
      @JsonKey(name: 'seats') this.seats,
      @JsonKey(name: 'gap_seats') this.gapSeats,
      @JsonKey(name: 'gap_amounts') this.gapAmounts});

  factory _$ScreenRowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenRowModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'row')
  final String? row;
  @override
  @JsonKey(name: 'seats')
  final String? seats;
  @override
  @JsonKey(name: 'gap_seats')
  final String? gapSeats;
  @override
  @JsonKey(name: 'gap_amounts')
  final String? gapAmounts;

  @override
  String toString() {
    return 'ScreenRowModel(id: $id, row: $row, seats: $seats, gapSeats: $gapSeats, gapAmounts: $gapAmounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenRowModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.gapSeats, gapSeats) ||
                other.gapSeats == gapSeats) &&
            (identical(other.gapAmounts, gapAmounts) ||
                other.gapAmounts == gapAmounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, row, seats, gapSeats, gapAmounts);

  /// Create a copy of ScreenRowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenRowModelImplCopyWith<_$ScreenRowModelImpl> get copyWith =>
      __$$ScreenRowModelImplCopyWithImpl<_$ScreenRowModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenRowModelImplToJson(
      this,
    );
  }
}

abstract class _ScreenRowModel implements ScreenRowModel {
  const factory _ScreenRowModel(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'row') final String? row,
          @JsonKey(name: 'seats') final String? seats,
          @JsonKey(name: 'gap_seats') final String? gapSeats,
          @JsonKey(name: 'gap_amounts') final String? gapAmounts}) =
      _$ScreenRowModelImpl;

  factory _ScreenRowModel.fromJson(Map<String, dynamic> json) =
      _$ScreenRowModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'row')
  String? get row;
  @override
  @JsonKey(name: 'seats')
  String? get seats;
  @override
  @JsonKey(name: 'gap_seats')
  String? get gapSeats;
  @override
  @JsonKey(name: 'gap_amounts')
  String? get gapAmounts;

  /// Create a copy of ScreenRowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreenRowModelImplCopyWith<_$ScreenRowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
