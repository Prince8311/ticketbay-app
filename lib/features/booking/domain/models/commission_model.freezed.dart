// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommissionModel _$CommissionModelFromJson(Map<String, dynamic> json) {
  return _CommissionModel.fromJson(json);
}

/// @nodoc
mixin _$CommissionModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'theaterCommissionType')
  String? get theaterCommissionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'theaterCommission')
  int? get theaterCommission => throw _privateConstructorUsedError;
  @JsonKey(name: 'adminCommission')
  int? get adminCommission => throw _privateConstructorUsedError;

  /// Serializes this CommissionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommissionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommissionModelCopyWith<CommissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommissionModelCopyWith<$Res> {
  factory $CommissionModelCopyWith(
          CommissionModel value, $Res Function(CommissionModel) then) =
      _$CommissionModelCopyWithImpl<$Res, CommissionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'theaterCommissionType') String? theaterCommissionType,
      @JsonKey(name: 'theaterCommission') int? theaterCommission,
      @JsonKey(name: 'adminCommission') int? adminCommission});
}

/// @nodoc
class _$CommissionModelCopyWithImpl<$Res, $Val extends CommissionModel>
    implements $CommissionModelCopyWith<$Res> {
  _$CommissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommissionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? theaterCommissionType = freezed,
    Object? theaterCommission = freezed,
    Object? adminCommission = freezed,
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
      theaterCommissionType: freezed == theaterCommissionType
          ? _value.theaterCommissionType
          : theaterCommissionType // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterCommission: freezed == theaterCommission
          ? _value.theaterCommission
          : theaterCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      adminCommission: freezed == adminCommission
          ? _value.adminCommission
          : adminCommission // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommissionModelImplCopyWith<$Res>
    implements $CommissionModelCopyWith<$Res> {
  factory _$$CommissionModelImplCopyWith(_$CommissionModelImpl value,
          $Res Function(_$CommissionModelImpl) then) =
      __$$CommissionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'theaterCommissionType') String? theaterCommissionType,
      @JsonKey(name: 'theaterCommission') int? theaterCommission,
      @JsonKey(name: 'adminCommission') int? adminCommission});
}

/// @nodoc
class __$$CommissionModelImplCopyWithImpl<$Res>
    extends _$CommissionModelCopyWithImpl<$Res, _$CommissionModelImpl>
    implements _$$CommissionModelImplCopyWith<$Res> {
  __$$CommissionModelImplCopyWithImpl(
      _$CommissionModelImpl _value, $Res Function(_$CommissionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommissionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? theaterCommissionType = freezed,
    Object? theaterCommission = freezed,
    Object? adminCommission = freezed,
  }) {
    return _then(_$CommissionModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterCommissionType: freezed == theaterCommissionType
          ? _value.theaterCommissionType
          : theaterCommissionType // ignore: cast_nullable_to_non_nullable
              as String?,
      theaterCommission: freezed == theaterCommission
          ? _value.theaterCommission
          : theaterCommission // ignore: cast_nullable_to_non_nullable
              as int?,
      adminCommission: freezed == adminCommission
          ? _value.adminCommission
          : adminCommission // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommissionModelImpl implements _CommissionModel {
  const _$CommissionModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'theaterCommissionType') this.theaterCommissionType,
      @JsonKey(name: 'theaterCommission') this.theaterCommission,
      @JsonKey(name: 'adminCommission') this.adminCommission});

  factory _$CommissionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommissionModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'theaterCommissionType')
  final String? theaterCommissionType;
  @override
  @JsonKey(name: 'theaterCommission')
  final int? theaterCommission;
  @override
  @JsonKey(name: 'adminCommission')
  final int? adminCommission;

  @override
  String toString() {
    return 'CommissionModel(status: $status, message: $message, theaterCommissionType: $theaterCommissionType, theaterCommission: $theaterCommission, adminCommission: $adminCommission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommissionModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.theaterCommissionType, theaterCommissionType) ||
                other.theaterCommissionType == theaterCommissionType) &&
            (identical(other.theaterCommission, theaterCommission) ||
                other.theaterCommission == theaterCommission) &&
            (identical(other.adminCommission, adminCommission) ||
                other.adminCommission == adminCommission));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      theaterCommissionType, theaterCommission, adminCommission);

  /// Create a copy of CommissionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommissionModelImplCopyWith<_$CommissionModelImpl> get copyWith =>
      __$$CommissionModelImplCopyWithImpl<_$CommissionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommissionModelImplToJson(
      this,
    );
  }
}

abstract class _CommissionModel implements CommissionModel {
  const factory _CommissionModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'theaterCommissionType')
          final String? theaterCommissionType,
          @JsonKey(name: 'theaterCommission') final int? theaterCommission,
          @JsonKey(name: 'adminCommission') final int? adminCommission}) =
      _$CommissionModelImpl;

  factory _CommissionModel.fromJson(Map<String, dynamic> json) =
      _$CommissionModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'theaterCommissionType')
  String? get theaterCommissionType;
  @override
  @JsonKey(name: 'theaterCommission')
  int? get theaterCommission;
  @override
  @JsonKey(name: 'adminCommission')
  int? get adminCommission;

  /// Create a copy of CommissionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommissionModelImplCopyWith<_$CommissionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
