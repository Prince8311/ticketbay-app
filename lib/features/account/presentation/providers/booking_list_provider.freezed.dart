// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_list_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingListState {
  bool get isLoading => throw _privateConstructorUsedError;
  BookingListModel? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  /// Create a copy of BookingListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingListStateCopyWith<BookingListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingListStateCopyWith<$Res> {
  factory $BookingListStateCopyWith(
          BookingListState value, $Res Function(BookingListState) then) =
      _$BookingListStateCopyWithImpl<$Res, BookingListState>;
  @useResult
  $Res call(
      {bool isLoading, BookingListModel? data, String? error, int currentPage});

  $BookingListModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookingListStateCopyWithImpl<$Res, $Val extends BookingListState>
    implements $BookingListStateCopyWith<$Res> {
  _$BookingListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingListState
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
              as BookingListModel?,
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

  /// Create a copy of BookingListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingListModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookingListModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingListStateImplCopyWith<$Res>
    implements $BookingListStateCopyWith<$Res> {
  factory _$$BookingListStateImplCopyWith(_$BookingListStateImpl value,
          $Res Function(_$BookingListStateImpl) then) =
      __$$BookingListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, BookingListModel? data, String? error, int currentPage});

  @override
  $BookingListModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BookingListStateImplCopyWithImpl<$Res>
    extends _$BookingListStateCopyWithImpl<$Res, _$BookingListStateImpl>
    implements _$$BookingListStateImplCopyWith<$Res> {
  __$$BookingListStateImplCopyWithImpl(_$BookingListStateImpl _value,
      $Res Function(_$BookingListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? currentPage = null,
  }) {
    return _then(_$BookingListStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingListModel?,
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

class _$BookingListStateImpl implements _BookingListState {
  const _$BookingListStateImpl(
      {this.isLoading = false, this.data, this.error, this.currentPage = 1});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final BookingListModel? data;
  @override
  final String? error;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'BookingListState(isLoading: $isLoading, data: $data, error: $error, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingListStateImpl &&
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

  /// Create a copy of BookingListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingListStateImplCopyWith<_$BookingListStateImpl> get copyWith =>
      __$$BookingListStateImplCopyWithImpl<_$BookingListStateImpl>(
          this, _$identity);
}

abstract class _BookingListState implements BookingListState {
  const factory _BookingListState(
      {final bool isLoading,
      final BookingListModel? data,
      final String? error,
      final int currentPage}) = _$BookingListStateImpl;

  @override
  bool get isLoading;
  @override
  BookingListModel? get data;
  @override
  String? get error;
  @override
  int get currentPage;

  /// Create a copy of BookingListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingListStateImplCopyWith<_$BookingListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
