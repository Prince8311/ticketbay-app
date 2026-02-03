// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theaters_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TheatersState {
  bool get isLoading => throw _privateConstructorUsedError;
  TheaterListModel? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  /// Create a copy of TheatersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TheatersStateCopyWith<TheatersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TheatersStateCopyWith<$Res> {
  factory $TheatersStateCopyWith(
          TheatersState value, $Res Function(TheatersState) then) =
      _$TheatersStateCopyWithImpl<$Res, TheatersState>;
  @useResult
  $Res call(
      {bool isLoading, TheaterListModel? data, String? error, int currentPage});

  $TheaterListModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$TheatersStateCopyWithImpl<$Res, $Val extends TheatersState>
    implements $TheatersStateCopyWith<$Res> {
  _$TheatersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TheatersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TheaterListModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TheatersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TheaterListModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TheaterListModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TheatersStateImplCopyWith<$Res>
    implements $TheatersStateCopyWith<$Res> {
  factory _$$TheatersStateImplCopyWith(
          _$TheatersStateImpl value, $Res Function(_$TheatersStateImpl) then) =
      __$$TheatersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, TheaterListModel? data, String? error, int currentPage});

  @override
  $TheaterListModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TheatersStateImplCopyWithImpl<$Res>
    extends _$TheatersStateCopyWithImpl<$Res, _$TheatersStateImpl>
    implements _$$TheatersStateImplCopyWith<$Res> {
  __$$TheatersStateImplCopyWithImpl(
      _$TheatersStateImpl _value, $Res Function(_$TheatersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TheatersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? currentPage = null,
  }) {
    return _then(_$TheatersStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TheaterListModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TheatersStateImpl implements _TheatersState {
  const _$TheatersStateImpl(
      {this.isLoading = false, this.data, this.error, this.currentPage = 1});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final TheaterListModel? data;
  @override
  final String? error;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'TheatersState(isLoading: $isLoading, data: $data, error: $error, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TheatersStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, data, error, currentPage);

  /// Create a copy of TheatersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TheatersStateImplCopyWith<_$TheatersStateImpl> get copyWith =>
      __$$TheatersStateImplCopyWithImpl<_$TheatersStateImpl>(this, _$identity);
}

abstract class _TheatersState implements TheatersState {
  const factory _TheatersState(
      {final bool isLoading,
      final TheaterListModel? data,
      final String? error,
      final int currentPage}) = _$TheatersStateImpl;

  @override
  bool get isLoading;
  @override
  TheaterListModel? get data;
  @override
  String? get error;
  @override
  int get currentPage;

  /// Create a copy of TheatersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TheatersStateImplCopyWith<_$TheatersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
