// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theaters_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TheaterListModel _$TheaterListModelFromJson(Map<String, dynamic> json) {
  return _TheaterListModel.fromJson(json);
}

/// @nodoc
mixin _$TheaterListModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'theaters')
  List<TheaterModel>? get theaters => throw _privateConstructorUsedError;

  /// Serializes this TheaterListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TheaterListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TheaterListModelCopyWith<TheaterListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheaterListModelCopyWith<$Res> {
  factory $TheaterListModelCopyWith(
          TheaterListModel value, $Res Function(TheaterListModel) then) =
      _$TheaterListModelCopyWithImpl<$Res, TheaterListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'currentPage') int? currentPage,
      @JsonKey(name: 'theaters') List<TheaterModel>? theaters});
}

/// @nodoc
class _$TheaterListModelCopyWithImpl<$Res, $Val extends TheaterListModel>
    implements $TheaterListModelCopyWith<$Res> {
  _$TheaterListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TheaterListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
    Object? theaters = freezed,
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
      theaters: freezed == theaters
          ? _value.theaters
          : theaters // ignore: cast_nullable_to_non_nullable
              as List<TheaterModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TheaterListModelImplCopyWith<$Res>
    implements $TheaterListModelCopyWith<$Res> {
  factory _$$TheaterListModelImplCopyWith(_$TheaterListModelImpl value,
          $Res Function(_$TheaterListModelImpl) then) =
      __$$TheaterListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'currentPage') int? currentPage,
      @JsonKey(name: 'theaters') List<TheaterModel>? theaters});
}

/// @nodoc
class __$$TheaterListModelImplCopyWithImpl<$Res>
    extends _$TheaterListModelCopyWithImpl<$Res, _$TheaterListModelImpl>
    implements _$$TheaterListModelImplCopyWith<$Res> {
  __$$TheaterListModelImplCopyWithImpl(_$TheaterListModelImpl _value,
      $Res Function(_$TheaterListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TheaterListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
    Object? theaters = freezed,
  }) {
    return _then(_$TheaterListModelImpl(
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
      theaters: freezed == theaters
          ? _value._theaters
          : theaters // ignore: cast_nullable_to_non_nullable
              as List<TheaterModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TheaterListModelImpl implements _TheaterListModel {
  const _$TheaterListModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'currentPage') this.currentPage,
      @JsonKey(name: 'theaters') final List<TheaterModel>? theaters})
      : _theaters = theaters;

  factory _$TheaterListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TheaterListModelImplFromJson(json);

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
  final List<TheaterModel>? _theaters;
  @override
  @JsonKey(name: 'theaters')
  List<TheaterModel>? get theaters {
    final value = _theaters;
    if (value == null) return null;
    if (_theaters is EqualUnmodifiableListView) return _theaters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TheaterListModel(status: $status, message: $message, totalCount: $totalCount, currentPage: $currentPage, theaters: $theaters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TheaterListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._theaters, _theaters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, totalCount,
      currentPage, const DeepCollectionEquality().hash(_theaters));

  /// Create a copy of TheaterListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TheaterListModelImplCopyWith<_$TheaterListModelImpl> get copyWith =>
      __$$TheaterListModelImplCopyWithImpl<_$TheaterListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TheaterListModelImplToJson(
      this,
    );
  }
}

abstract class _TheaterListModel implements TheaterListModel {
  const factory _TheaterListModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'currentPage') final int? currentPage,
          @JsonKey(name: 'theaters') final List<TheaterModel>? theaters}) =
      _$TheaterListModelImpl;

  factory _TheaterListModel.fromJson(Map<String, dynamic> json) =
      _$TheaterListModelImpl.fromJson;

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
  @JsonKey(name: 'theaters')
  List<TheaterModel>? get theaters;

  /// Create a copy of TheaterListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TheaterListModelImplCopyWith<_$TheaterListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TheaterModel _$TheaterModelFromJson(Map<String, dynamic> json) {
  return _TheaterModel.fromJson(json);
}

/// @nodoc
mixin _$TheaterModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this TheaterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TheaterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TheaterModelCopyWith<TheaterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheaterModelCopyWith<$Res> {
  factory $TheaterModelCopyWith(
          TheaterModel value, $Res Function(TheaterModel) then) =
      _$TheaterModelCopyWithImpl<$Res, TheaterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class _$TheaterModelCopyWithImpl<$Res, $Val extends TheaterModel>
    implements $TheaterModelCopyWith<$Res> {
  _$TheaterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TheaterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? location = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TheaterModelImplCopyWith<$Res>
    implements $TheaterModelCopyWith<$Res> {
  factory _$$TheaterModelImplCopyWith(
          _$TheaterModelImpl value, $Res Function(_$TheaterModelImpl) then) =
      __$$TheaterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'status') String? status});
}

/// @nodoc
class __$$TheaterModelImplCopyWithImpl<$Res>
    extends _$TheaterModelCopyWithImpl<$Res, _$TheaterModelImpl>
    implements _$$TheaterModelImplCopyWith<$Res> {
  __$$TheaterModelImplCopyWithImpl(
      _$TheaterModelImpl _value, $Res Function(_$TheaterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TheaterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? location = freezed,
    Object? status = freezed,
  }) {
    return _then(_$TheaterModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TheaterModelImpl implements _TheaterModel {
  const _$TheaterModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'state') this.state,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'status') this.status});

  factory _$TheaterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TheaterModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'state')
  final String? state;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'TheaterModel(id: $id, name: $name, state: $state, city: $city, location: $location, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TheaterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, state, city, location, status);

  /// Create a copy of TheaterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TheaterModelImplCopyWith<_$TheaterModelImpl> get copyWith =>
      __$$TheaterModelImplCopyWithImpl<_$TheaterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TheaterModelImplToJson(
      this,
    );
  }
}

abstract class _TheaterModel implements TheaterModel {
  const factory _TheaterModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'state') final String? state,
      @JsonKey(name: 'city') final String? city,
      @JsonKey(name: 'location') final String? location,
      @JsonKey(name: 'status') final String? status}) = _$TheaterModelImpl;

  factory _TheaterModel.fromJson(Map<String, dynamic> json) =
      _$TheaterModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'state')
  String? get state;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'status')
  String? get status;

  /// Create a copy of TheaterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TheaterModelImplCopyWith<_$TheaterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
