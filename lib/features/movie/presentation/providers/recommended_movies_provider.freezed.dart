// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_movies_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendedMoviesState {
  bool get isLoading => throw _privateConstructorUsedError;
  MovieListModel? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  /// Create a copy of RecommendedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendedMoviesStateCopyWith<RecommendedMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedMoviesStateCopyWith<$Res> {
  factory $RecommendedMoviesStateCopyWith(RecommendedMoviesState value,
          $Res Function(RecommendedMoviesState) then) =
      _$RecommendedMoviesStateCopyWithImpl<$Res, RecommendedMoviesState>;
  @useResult
  $Res call(
      {bool isLoading, MovieListModel? data, String? error, int currentPage});

  $MovieListModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$RecommendedMoviesStateCopyWithImpl<$Res,
        $Val extends RecommendedMoviesState>
    implements $RecommendedMoviesStateCopyWith<$Res> {
  _$RecommendedMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedMoviesState
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
              as MovieListModel?,
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

  /// Create a copy of RecommendedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieListModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $MovieListModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecommendedMoviesStateImplCopyWith<$Res>
    implements $RecommendedMoviesStateCopyWith<$Res> {
  factory _$$RecommendedMoviesStateImplCopyWith(
          _$RecommendedMoviesStateImpl value,
          $Res Function(_$RecommendedMoviesStateImpl) then) =
      __$$RecommendedMoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, MovieListModel? data, String? error, int currentPage});

  @override
  $MovieListModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RecommendedMoviesStateImplCopyWithImpl<$Res>
    extends _$RecommendedMoviesStateCopyWithImpl<$Res,
        _$RecommendedMoviesStateImpl>
    implements _$$RecommendedMoviesStateImplCopyWith<$Res> {
  __$$RecommendedMoviesStateImplCopyWithImpl(
      _$RecommendedMoviesStateImpl _value,
      $Res Function(_$RecommendedMoviesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecommendedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? currentPage = null,
  }) {
    return _then(_$RecommendedMoviesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MovieListModel?,
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

class _$RecommendedMoviesStateImpl implements _RecommendedMoviesState {
  const _$RecommendedMoviesStateImpl(
      {this.isLoading = false, this.data, this.error, this.currentPage = 1});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final MovieListModel? data;
  @override
  final String? error;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'RecommendedMoviesState(isLoading: $isLoading, data: $data, error: $error, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedMoviesStateImpl &&
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

  /// Create a copy of RecommendedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedMoviesStateImplCopyWith<_$RecommendedMoviesStateImpl>
      get copyWith => __$$RecommendedMoviesStateImplCopyWithImpl<
          _$RecommendedMoviesStateImpl>(this, _$identity);
}

abstract class _RecommendedMoviesState implements RecommendedMoviesState {
  const factory _RecommendedMoviesState(
      {final bool isLoading,
      final MovieListModel? data,
      final String? error,
      final int currentPage}) = _$RecommendedMoviesStateImpl;

  @override
  bool get isLoading;
  @override
  MovieListModel? get data;
  @override
  String? get error;
  @override
  int get currentPage;

  /// Create a copy of RecommendedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedMoviesStateImplCopyWith<_$RecommendedMoviesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
