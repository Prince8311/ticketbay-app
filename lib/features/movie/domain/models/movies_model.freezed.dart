// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieListModel _$MovieListModelFromJson(Map<String, dynamic> json) {
  return _MovieListModel.fromJson(json);
}

/// @nodoc
mixin _$MovieListModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'movies')
  List<MovieModel>? get movies => throw _privateConstructorUsedError;

  /// Serializes this MovieListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListModelCopyWith<MovieListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListModelCopyWith<$Res> {
  factory $MovieListModelCopyWith(
          MovieListModel value, $Res Function(MovieListModel) then) =
      _$MovieListModelCopyWithImpl<$Res, MovieListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'currentPage') int? currentPage,
      @JsonKey(name: 'movies') List<MovieModel>? movies});
}

/// @nodoc
class _$MovieListModelCopyWithImpl<$Res, $Val extends MovieListModel>
    implements $MovieListModelCopyWith<$Res> {
  _$MovieListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
    Object? movies = freezed,
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
      movies: freezed == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListModelImplCopyWith<$Res>
    implements $MovieListModelCopyWith<$Res> {
  factory _$$MovieListModelImplCopyWith(_$MovieListModelImpl value,
          $Res Function(_$MovieListModelImpl) then) =
      __$$MovieListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'currentPage') int? currentPage,
      @JsonKey(name: 'movies') List<MovieModel>? movies});
}

/// @nodoc
class __$$MovieListModelImplCopyWithImpl<$Res>
    extends _$MovieListModelCopyWithImpl<$Res, _$MovieListModelImpl>
    implements _$$MovieListModelImplCopyWith<$Res> {
  __$$MovieListModelImplCopyWithImpl(
      _$MovieListModelImpl _value, $Res Function(_$MovieListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
    Object? movies = freezed,
  }) {
    return _then(_$MovieListModelImpl(
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
      movies: freezed == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListModelImpl implements _MovieListModel {
  const _$MovieListModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'currentPage') this.currentPage,
      @JsonKey(name: 'movies') final List<MovieModel>? movies})
      : _movies = movies;

  factory _$MovieListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListModelImplFromJson(json);

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
  final List<MovieModel>? _movies;
  @override
  @JsonKey(name: 'movies')
  List<MovieModel>? get movies {
    final value = _movies;
    if (value == null) return null;
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieListModel(status: $status, message: $message, totalCount: $totalCount, currentPage: $currentPage, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, totalCount,
      currentPage, const DeepCollectionEquality().hash(_movies));

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListModelImplCopyWith<_$MovieListModelImpl> get copyWith =>
      __$$MovieListModelImplCopyWithImpl<_$MovieListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListModelImplToJson(
      this,
    );
  }
}

abstract class _MovieListModel implements MovieListModel {
  const factory _MovieListModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'currentPage') final int? currentPage,
          @JsonKey(name: 'movies') final List<MovieModel>? movies}) =
      _$MovieListModelImpl;

  factory _MovieListModel.fromJson(Map<String, dynamic> json) =
      _$MovieListModelImpl.fromJson;

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
  @JsonKey(name: 'movies')
  List<MovieModel>? get movies;

  /// Create a copy of MovieListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListModelImplCopyWith<_$MovieListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @JsonKey(name: 'movie_name')
  String? get movieName => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_image')
  String? get posterImage => throw _privateConstructorUsedError;

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'movie_name') String? movieName,
      @JsonKey(name: 'poster_image') String? posterImage});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieName = freezed,
    Object? posterImage = freezed,
  }) {
    return _then(_value.copyWith(
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String?,
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'movie_name') String? movieName,
      @JsonKey(name: 'poster_image') String? posterImage});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieName = freezed,
    Object? posterImage = freezed,
  }) {
    return _then(_$MovieModelImpl(
      movieName: freezed == movieName
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
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
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {@JsonKey(name: 'movie_name') this.movieName,
      @JsonKey(name: 'poster_image') this.posterImage});

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  @JsonKey(name: 'movie_name')
  final String? movieName;
  @override
  @JsonKey(name: 'poster_image')
  final String? posterImage;

  @override
  String toString() {
    return 'MovieModel(movieName: $movieName, posterImage: $posterImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.movieName, movieName) ||
                other.movieName == movieName) &&
            (identical(other.posterImage, posterImage) ||
                other.posterImage == posterImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, movieName, posterImage);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
          {@JsonKey(name: 'movie_name') final String? movieName,
          @JsonKey(name: 'poster_image') final String? posterImage}) =
      _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  @JsonKey(name: 'movie_name')
  String? get movieName;
  @override
  @JsonKey(name: 'poster_image')
  String? get posterImage;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDetailsResponseModel _$MovieDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MovieDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsResponseModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'movie')
  MovieDetailsModel? get movie => throw _privateConstructorUsedError;

  /// Serializes this MovieDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailsResponseModelCopyWith<MovieDetailsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsResponseModelCopyWith<$Res> {
  factory $MovieDetailsResponseModelCopyWith(MovieDetailsResponseModel value,
          $Res Function(MovieDetailsResponseModel) then) =
      _$MovieDetailsResponseModelCopyWithImpl<$Res, MovieDetailsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'movie') MovieDetailsModel? movie});

  $MovieDetailsModelCopyWith<$Res>? get movie;
}

/// @nodoc
class _$MovieDetailsResponseModelCopyWithImpl<$Res,
        $Val extends MovieDetailsResponseModel>
    implements $MovieDetailsResponseModelCopyWith<$Res> {
  _$MovieDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? movie = freezed,
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
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetailsModel?,
    ) as $Val);
  }

  /// Create a copy of MovieDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MovieDetailsModelCopyWith<$Res>? get movie {
    if (_value.movie == null) {
      return null;
    }

    return $MovieDetailsModelCopyWith<$Res>(_value.movie!, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieDetailsResponseModelImplCopyWith<$Res>
    implements $MovieDetailsResponseModelCopyWith<$Res> {
  factory _$$MovieDetailsResponseModelImplCopyWith(
          _$MovieDetailsResponseModelImpl value,
          $Res Function(_$MovieDetailsResponseModelImpl) then) =
      __$$MovieDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'movie') MovieDetailsModel? movie});

  @override
  $MovieDetailsModelCopyWith<$Res>? get movie;
}

/// @nodoc
class __$$MovieDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$MovieDetailsResponseModelCopyWithImpl<$Res,
        _$MovieDetailsResponseModelImpl>
    implements _$$MovieDetailsResponseModelImplCopyWith<$Res> {
  __$$MovieDetailsResponseModelImplCopyWithImpl(
      _$MovieDetailsResponseModelImpl _value,
      $Res Function(_$MovieDetailsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? movie = freezed,
  }) {
    return _then(_$MovieDetailsResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      movie: freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailsResponseModelImpl implements _MovieDetailsResponseModel {
  const _$MovieDetailsResponseModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'movie') this.movie});

  factory _$MovieDetailsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'movie')
  final MovieDetailsModel? movie;

  @override
  String toString() {
    return 'MovieDetailsResponseModel(status: $status, message: $message, movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, movie);

  /// Create a copy of MovieDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsResponseModelImplCopyWith<_$MovieDetailsResponseModelImpl>
      get copyWith => __$$MovieDetailsResponseModelImplCopyWithImpl<
          _$MovieDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailsResponseModel implements MovieDetailsResponseModel {
  const factory _MovieDetailsResponseModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'movie') final MovieDetailsModel? movie}) =
      _$MovieDetailsResponseModelImpl;

  factory _MovieDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'movie')
  MovieDetailsModel? get movie;

  /// Create a copy of MovieDetailsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailsResponseModelImplCopyWith<_$MovieDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_image')
  String? get posterImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_year')
  String? get releaseYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_time')
  String? get totalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_category')
  String? get ageCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'genres')
  String? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'trailer')
  String? get trailer => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_languages')
  String? get availableLanguages => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_formats')
  String? get availableFormats => throw _privateConstructorUsedError;
  @JsonKey(name: 'casts')
  List<MovieMemberModel>? get casts => throw _privateConstructorUsedError;
  @JsonKey(name: 'crews')
  List<MovieMemberModel>? get crews => throw _privateConstructorUsedError;

  /// Serializes this MovieDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsModelCopyWith<$Res> {
  factory $MovieDetailsModelCopyWith(
          MovieDetailsModel value, $Res Function(MovieDetailsModel) then) =
      _$MovieDetailsModelCopyWithImpl<$Res, MovieDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'poster_image') String? posterImage,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'release_year') String? releaseYear,
      @JsonKey(name: 'total_time') String? totalTime,
      @JsonKey(name: 'age_category') String? ageCategory,
      @JsonKey(name: 'genres') String? genres,
      @JsonKey(name: 'trailer') String? trailer,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'available_languages') String? availableLanguages,
      @JsonKey(name: 'available_formats') String? availableFormats,
      @JsonKey(name: 'casts') List<MovieMemberModel>? casts,
      @JsonKey(name: 'crews') List<MovieMemberModel>? crews});
}

/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res, $Val extends MovieDetailsModel>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posterImage = freezed,
    Object? releaseDate = freezed,
    Object? releaseYear = freezed,
    Object? totalTime = freezed,
    Object? ageCategory = freezed,
    Object? genres = freezed,
    Object? trailer = freezed,
    Object? description = freezed,
    Object? availableLanguages = freezed,
    Object? availableFormats = freezed,
    Object? casts = freezed,
    Object? crews = freezed,
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
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseYear: freezed == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      ageCategory: freezed == ageCategory
          ? _value.ageCategory
          : ageCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String?,
      trailer: freezed == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      availableLanguages: freezed == availableLanguages
          ? _value.availableLanguages
          : availableLanguages // ignore: cast_nullable_to_non_nullable
              as String?,
      availableFormats: freezed == availableFormats
          ? _value.availableFormats
          : availableFormats // ignore: cast_nullable_to_non_nullable
              as String?,
      casts: freezed == casts
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<MovieMemberModel>?,
      crews: freezed == crews
          ? _value.crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<MovieMemberModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDetailsModelImplCopyWith<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  factory _$$MovieDetailsModelImplCopyWith(_$MovieDetailsModelImpl value,
          $Res Function(_$MovieDetailsModelImpl) then) =
      __$$MovieDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'poster_image') String? posterImage,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'release_year') String? releaseYear,
      @JsonKey(name: 'total_time') String? totalTime,
      @JsonKey(name: 'age_category') String? ageCategory,
      @JsonKey(name: 'genres') String? genres,
      @JsonKey(name: 'trailer') String? trailer,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'available_languages') String? availableLanguages,
      @JsonKey(name: 'available_formats') String? availableFormats,
      @JsonKey(name: 'casts') List<MovieMemberModel>? casts,
      @JsonKey(name: 'crews') List<MovieMemberModel>? crews});
}

/// @nodoc
class __$$MovieDetailsModelImplCopyWithImpl<$Res>
    extends _$MovieDetailsModelCopyWithImpl<$Res, _$MovieDetailsModelImpl>
    implements _$$MovieDetailsModelImplCopyWith<$Res> {
  __$$MovieDetailsModelImplCopyWithImpl(_$MovieDetailsModelImpl _value,
      $Res Function(_$MovieDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? posterImage = freezed,
    Object? releaseDate = freezed,
    Object? releaseYear = freezed,
    Object? totalTime = freezed,
    Object? ageCategory = freezed,
    Object? genres = freezed,
    Object? trailer = freezed,
    Object? description = freezed,
    Object? availableLanguages = freezed,
    Object? availableFormats = freezed,
    Object? casts = freezed,
    Object? crews = freezed,
  }) {
    return _then(_$MovieDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterImage: freezed == posterImage
          ? _value.posterImage
          : posterImage // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseYear: freezed == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      ageCategory: freezed == ageCategory
          ? _value.ageCategory
          : ageCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String?,
      trailer: freezed == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      availableLanguages: freezed == availableLanguages
          ? _value.availableLanguages
          : availableLanguages // ignore: cast_nullable_to_non_nullable
              as String?,
      availableFormats: freezed == availableFormats
          ? _value.availableFormats
          : availableFormats // ignore: cast_nullable_to_non_nullable
              as String?,
      casts: freezed == casts
          ? _value._casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<MovieMemberModel>?,
      crews: freezed == crews
          ? _value._crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<MovieMemberModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDetailsModelImpl implements _MovieDetailsModel {
  const _$MovieDetailsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'poster_image') this.posterImage,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'release_year') this.releaseYear,
      @JsonKey(name: 'total_time') this.totalTime,
      @JsonKey(name: 'age_category') this.ageCategory,
      @JsonKey(name: 'genres') this.genres,
      @JsonKey(name: 'trailer') this.trailer,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'available_languages') this.availableLanguages,
      @JsonKey(name: 'available_formats') this.availableFormats,
      @JsonKey(name: 'casts') final List<MovieMemberModel>? casts,
      @JsonKey(name: 'crews') final List<MovieMemberModel>? crews})
      : _casts = casts,
        _crews = crews;

  factory _$MovieDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'poster_image')
  final String? posterImage;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'release_year')
  final String? releaseYear;
  @override
  @JsonKey(name: 'total_time')
  final String? totalTime;
  @override
  @JsonKey(name: 'age_category')
  final String? ageCategory;
  @override
  @JsonKey(name: 'genres')
  final String? genres;
  @override
  @JsonKey(name: 'trailer')
  final String? trailer;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'available_languages')
  final String? availableLanguages;
  @override
  @JsonKey(name: 'available_formats')
  final String? availableFormats;
  final List<MovieMemberModel>? _casts;
  @override
  @JsonKey(name: 'casts')
  List<MovieMemberModel>? get casts {
    final value = _casts;
    if (value == null) return null;
    if (_casts is EqualUnmodifiableListView) return _casts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieMemberModel>? _crews;
  @override
  @JsonKey(name: 'crews')
  List<MovieMemberModel>? get crews {
    final value = _crews;
    if (value == null) return null;
    if (_crews is EqualUnmodifiableListView) return _crews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieDetailsModel(id: $id, name: $name, posterImage: $posterImage, releaseDate: $releaseDate, releaseYear: $releaseYear, totalTime: $totalTime, ageCategory: $ageCategory, genres: $genres, trailer: $trailer, description: $description, availableLanguages: $availableLanguages, availableFormats: $availableFormats, casts: $casts, crews: $crews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterImage, posterImage) ||
                other.posterImage == posterImage) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.ageCategory, ageCategory) ||
                other.ageCategory == ageCategory) &&
            (identical(other.genres, genres) || other.genres == genres) &&
            (identical(other.trailer, trailer) || other.trailer == trailer) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.availableLanguages, availableLanguages) ||
                other.availableLanguages == availableLanguages) &&
            (identical(other.availableFormats, availableFormats) ||
                other.availableFormats == availableFormats) &&
            const DeepCollectionEquality().equals(other._casts, _casts) &&
            const DeepCollectionEquality().equals(other._crews, _crews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      posterImage,
      releaseDate,
      releaseYear,
      totalTime,
      ageCategory,
      genres,
      trailer,
      description,
      availableLanguages,
      availableFormats,
      const DeepCollectionEquality().hash(_casts),
      const DeepCollectionEquality().hash(_crews));

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      __$$MovieDetailsModelImplCopyWithImpl<_$MovieDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDetailsModel implements MovieDetailsModel {
  const factory _MovieDetailsModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'poster_image') final String? posterImage,
      @JsonKey(name: 'release_date') final String? releaseDate,
      @JsonKey(name: 'release_year') final String? releaseYear,
      @JsonKey(name: 'total_time') final String? totalTime,
      @JsonKey(name: 'age_category') final String? ageCategory,
      @JsonKey(name: 'genres') final String? genres,
      @JsonKey(name: 'trailer') final String? trailer,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'available_languages') final String? availableLanguages,
      @JsonKey(name: 'available_formats') final String? availableFormats,
      @JsonKey(name: 'casts') final List<MovieMemberModel>? casts,
      @JsonKey(name: 'crews')
      final List<MovieMemberModel>? crews}) = _$MovieDetailsModelImpl;

  factory _MovieDetailsModel.fromJson(Map<String, dynamic> json) =
      _$MovieDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'poster_image')
  String? get posterImage;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'release_year')
  String? get releaseYear;
  @override
  @JsonKey(name: 'total_time')
  String? get totalTime;
  @override
  @JsonKey(name: 'age_category')
  String? get ageCategory;
  @override
  @JsonKey(name: 'genres')
  String? get genres;
  @override
  @JsonKey(name: 'trailer')
  String? get trailer;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'available_languages')
  String? get availableLanguages;
  @override
  @JsonKey(name: 'available_formats')
  String? get availableFormats;
  @override
  @JsonKey(name: 'casts')
  List<MovieMemberModel>? get casts;
  @override
  @JsonKey(name: 'crews')
  List<MovieMemberModel>? get crews;

  /// Create a copy of MovieDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDetailsModelImplCopyWith<_$MovieDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieMemberModel _$MovieMemberModelFromJson(Map<String, dynamic> json) {
  return _MovieMemberModel.fromJson(json);
}

/// @nodoc
mixin _$MovieMemberModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;

  /// Serializes this MovieMemberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieMemberModelCopyWith<MovieMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieMemberModelCopyWith<$Res> {
  factory $MovieMemberModelCopyWith(
          MovieMemberModel value, $Res Function(MovieMemberModel) then) =
      _$MovieMemberModelCopyWithImpl<$Res, MovieMemberModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class _$MovieMemberModelCopyWithImpl<$Res, $Val extends MovieMemberModel>
    implements $MovieMemberModelCopyWith<$Res> {
  _$MovieMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieMemberModelImplCopyWith<$Res>
    implements $MovieMemberModelCopyWith<$Res> {
  factory _$$MovieMemberModelImplCopyWith(_$MovieMemberModelImpl value,
          $Res Function(_$MovieMemberModelImpl) then) =
      __$$MovieMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_image') String? profileImage});
}

/// @nodoc
class __$$MovieMemberModelImplCopyWithImpl<$Res>
    extends _$MovieMemberModelCopyWithImpl<$Res, _$MovieMemberModelImpl>
    implements _$$MovieMemberModelImplCopyWith<$Res> {
  __$$MovieMemberModelImplCopyWithImpl(_$MovieMemberModelImpl _value,
      $Res Function(_$MovieMemberModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_$MovieMemberModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieMemberModelImpl implements _MovieMemberModel {
  const _$MovieMemberModelImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'profile_image') this.profileImage});

  factory _$MovieMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieMemberModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;

  @override
  String toString() {
    return 'MovieMemberModel(name: $name, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieMemberModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, profileImage);

  /// Create a copy of MovieMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieMemberModelImplCopyWith<_$MovieMemberModelImpl> get copyWith =>
      __$$MovieMemberModelImplCopyWithImpl<_$MovieMemberModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieMemberModelImplToJson(
      this,
    );
  }
}

abstract class _MovieMemberModel implements MovieMemberModel {
  const factory _MovieMemberModel(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'profile_image') final String? profileImage}) =
      _$MovieMemberModelImpl;

  factory _MovieMemberModel.fromJson(Map<String, dynamic> json) =
      _$MovieMemberModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;

  /// Create a copy of MovieMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieMemberModelImplCopyWith<_$MovieMemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageFormatResponseModel _$LanguageFormatResponseModelFromJson(
    Map<String, dynamic> json) {
  return _LanguageFormatResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageFormatResponseModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<LanguageFormatsModel>? get data => throw _privateConstructorUsedError;

  /// Serializes this LanguageFormatResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageFormatResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageFormatResponseModelCopyWith<LanguageFormatResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageFormatResponseModelCopyWith<$Res> {
  factory $LanguageFormatResponseModelCopyWith(
          LanguageFormatResponseModel value,
          $Res Function(LanguageFormatResponseModel) then) =
      _$LanguageFormatResponseModelCopyWithImpl<$Res,
          LanguageFormatResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<LanguageFormatsModel>? data});
}

/// @nodoc
class _$LanguageFormatResponseModelCopyWithImpl<$Res,
        $Val extends LanguageFormatResponseModel>
    implements $LanguageFormatResponseModelCopyWith<$Res> {
  _$LanguageFormatResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageFormatResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LanguageFormatsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageFormatResponseModelImplCopyWith<$Res>
    implements $LanguageFormatResponseModelCopyWith<$Res> {
  factory _$$LanguageFormatResponseModelImplCopyWith(
          _$LanguageFormatResponseModelImpl value,
          $Res Function(_$LanguageFormatResponseModelImpl) then) =
      __$$LanguageFormatResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<LanguageFormatsModel>? data});
}

/// @nodoc
class __$$LanguageFormatResponseModelImplCopyWithImpl<$Res>
    extends _$LanguageFormatResponseModelCopyWithImpl<$Res,
        _$LanguageFormatResponseModelImpl>
    implements _$$LanguageFormatResponseModelImplCopyWith<$Res> {
  __$$LanguageFormatResponseModelImplCopyWithImpl(
      _$LanguageFormatResponseModelImpl _value,
      $Res Function(_$LanguageFormatResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageFormatResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LanguageFormatResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LanguageFormatsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageFormatResponseModelImpl
    implements _LanguageFormatResponseModel {
  const _$LanguageFormatResponseModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') final List<LanguageFormatsModel>? data})
      : _data = data;

  factory _$LanguageFormatResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LanguageFormatResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<LanguageFormatsModel>? _data;
  @override
  @JsonKey(name: 'data')
  List<LanguageFormatsModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LanguageFormatResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageFormatResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of LanguageFormatResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageFormatResponseModelImplCopyWith<_$LanguageFormatResponseModelImpl>
      get copyWith => __$$LanguageFormatResponseModelImplCopyWithImpl<
          _$LanguageFormatResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageFormatResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LanguageFormatResponseModel
    implements LanguageFormatResponseModel {
  const factory _LanguageFormatResponseModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final List<LanguageFormatsModel>? data}) =
      _$LanguageFormatResponseModelImpl;

  factory _LanguageFormatResponseModel.fromJson(Map<String, dynamic> json) =
      _$LanguageFormatResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<LanguageFormatsModel>? get data;

  /// Create a copy of LanguageFormatResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageFormatResponseModelImplCopyWith<_$LanguageFormatResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LanguageFormatsModel _$LanguageFormatsModelFromJson(Map<String, dynamic> json) {
  return _LanguageFormatsModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageFormatsModel {
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'formats')
  List<String>? get formats => throw _privateConstructorUsedError;

  /// Serializes this LanguageFormatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageFormatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageFormatsModelCopyWith<LanguageFormatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageFormatsModelCopyWith<$Res> {
  factory $LanguageFormatsModelCopyWith(LanguageFormatsModel value,
          $Res Function(LanguageFormatsModel) then) =
      _$LanguageFormatsModelCopyWithImpl<$Res, LanguageFormatsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'formats') List<String>? formats});
}

/// @nodoc
class _$LanguageFormatsModelCopyWithImpl<$Res,
        $Val extends LanguageFormatsModel>
    implements $LanguageFormatsModelCopyWith<$Res> {
  _$LanguageFormatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageFormatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? formats = freezed,
  }) {
    return _then(_value.copyWith(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      formats: freezed == formats
          ? _value.formats
          : formats // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageFormatsModelImplCopyWith<$Res>
    implements $LanguageFormatsModelCopyWith<$Res> {
  factory _$$LanguageFormatsModelImplCopyWith(_$LanguageFormatsModelImpl value,
          $Res Function(_$LanguageFormatsModelImpl) then) =
      __$$LanguageFormatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String? language,
      @JsonKey(name: 'formats') List<String>? formats});
}

/// @nodoc
class __$$LanguageFormatsModelImplCopyWithImpl<$Res>
    extends _$LanguageFormatsModelCopyWithImpl<$Res, _$LanguageFormatsModelImpl>
    implements _$$LanguageFormatsModelImplCopyWith<$Res> {
  __$$LanguageFormatsModelImplCopyWithImpl(_$LanguageFormatsModelImpl _value,
      $Res Function(_$LanguageFormatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageFormatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = freezed,
    Object? formats = freezed,
  }) {
    return _then(_$LanguageFormatsModelImpl(
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      formats: freezed == formats
          ? _value._formats
          : formats // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageFormatsModelImpl implements _LanguageFormatsModel {
  const _$LanguageFormatsModelImpl(
      {@JsonKey(name: 'language') this.language,
      @JsonKey(name: 'formats') final List<String>? formats})
      : _formats = formats;

  factory _$LanguageFormatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageFormatsModelImplFromJson(json);

  @override
  @JsonKey(name: 'language')
  final String? language;
  final List<String>? _formats;
  @override
  @JsonKey(name: 'formats')
  List<String>? get formats {
    final value = _formats;
    if (value == null) return null;
    if (_formats is EqualUnmodifiableListView) return _formats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LanguageFormatsModel(language: $language, formats: $formats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageFormatsModelImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._formats, _formats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, language, const DeepCollectionEquality().hash(_formats));

  /// Create a copy of LanguageFormatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageFormatsModelImplCopyWith<_$LanguageFormatsModelImpl>
      get copyWith =>
          __$$LanguageFormatsModelImplCopyWithImpl<_$LanguageFormatsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageFormatsModelImplToJson(
      this,
    );
  }
}

abstract class _LanguageFormatsModel implements LanguageFormatsModel {
  const factory _LanguageFormatsModel(
          {@JsonKey(name: 'language') final String? language,
          @JsonKey(name: 'formats') final List<String>? formats}) =
      _$LanguageFormatsModelImpl;

  factory _LanguageFormatsModel.fromJson(Map<String, dynamic> json) =
      _$LanguageFormatsModelImpl.fromJson;

  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'formats')
  List<String>? get formats;

  /// Create a copy of LanguageFormatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageFormatsModelImplCopyWith<_$LanguageFormatsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovieDatesModel _$MovieDatesModelFromJson(Map<String, dynamic> json) {
  return _MovieDatesModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDatesModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'dates')
  List<MovieDateItem>? get dates => throw _privateConstructorUsedError;

  /// Serializes this MovieDatesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDatesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDatesModelCopyWith<MovieDatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDatesModelCopyWith<$Res> {
  factory $MovieDatesModelCopyWith(
          MovieDatesModel value, $Res Function(MovieDatesModel) then) =
      _$MovieDatesModelCopyWithImpl<$Res, MovieDatesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'dates') List<MovieDateItem>? dates});
}

/// @nodoc
class _$MovieDatesModelCopyWithImpl<$Res, $Val extends MovieDatesModel>
    implements $MovieDatesModelCopyWith<$Res> {
  _$MovieDatesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDatesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? dates = freezed,
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
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<MovieDateItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDatesModelImplCopyWith<$Res>
    implements $MovieDatesModelCopyWith<$Res> {
  factory _$$MovieDatesModelImplCopyWith(_$MovieDatesModelImpl value,
          $Res Function(_$MovieDatesModelImpl) then) =
      __$$MovieDatesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'dates') List<MovieDateItem>? dates});
}

/// @nodoc
class __$$MovieDatesModelImplCopyWithImpl<$Res>
    extends _$MovieDatesModelCopyWithImpl<$Res, _$MovieDatesModelImpl>
    implements _$$MovieDatesModelImplCopyWith<$Res> {
  __$$MovieDatesModelImplCopyWithImpl(
      _$MovieDatesModelImpl _value, $Res Function(_$MovieDatesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDatesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? dates = freezed,
  }) {
    return _then(_$MovieDatesModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: freezed == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<MovieDateItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDatesModelImpl implements _MovieDatesModel {
  const _$MovieDatesModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'dates') final List<MovieDateItem>? dates})
      : _dates = dates;

  factory _$MovieDatesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDatesModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<MovieDateItem>? _dates;
  @override
  @JsonKey(name: 'dates')
  List<MovieDateItem>? get dates {
    final value = _dates;
    if (value == null) return null;
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieDatesModel(status: $status, message: $message, dates: $dates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDatesModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_dates));

  /// Create a copy of MovieDatesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDatesModelImplCopyWith<_$MovieDatesModelImpl> get copyWith =>
      __$$MovieDatesModelImplCopyWithImpl<_$MovieDatesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDatesModelImplToJson(
      this,
    );
  }
}

abstract class _MovieDatesModel implements MovieDatesModel {
  const factory _MovieDatesModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'dates') final List<MovieDateItem>? dates}) =
      _$MovieDatesModelImpl;

  factory _MovieDatesModel.fromJson(Map<String, dynamic> json) =
      _$MovieDatesModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'dates')
  List<MovieDateItem>? get dates;

  /// Create a copy of MovieDatesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDatesModelImplCopyWith<_$MovieDatesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDateItem _$MovieDateItemFromJson(Map<String, dynamic> json) {
  return _MovieDateItem.fromJson(json);
}

/// @nodoc
mixin _$MovieDateItem {
  @JsonKey(name: 'start_date')
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this MovieDateItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieDateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieDateItemCopyWith<MovieDateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDateItemCopyWith<$Res> {
  factory $MovieDateItemCopyWith(
          MovieDateItem value, $Res Function(MovieDateItem) then) =
      _$MovieDateItemCopyWithImpl<$Res, MovieDateItem>;
  @useResult
  $Res call({@JsonKey(name: 'start_date') String? date});
}

/// @nodoc
class _$MovieDateItemCopyWithImpl<$Res, $Val extends MovieDateItem>
    implements $MovieDateItemCopyWith<$Res> {
  _$MovieDateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieDateItemImplCopyWith<$Res>
    implements $MovieDateItemCopyWith<$Res> {
  factory _$$MovieDateItemImplCopyWith(
          _$MovieDateItemImpl value, $Res Function(_$MovieDateItemImpl) then) =
      __$$MovieDateItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'start_date') String? date});
}

/// @nodoc
class __$$MovieDateItemImplCopyWithImpl<$Res>
    extends _$MovieDateItemCopyWithImpl<$Res, _$MovieDateItemImpl>
    implements _$$MovieDateItemImplCopyWith<$Res> {
  __$$MovieDateItemImplCopyWithImpl(
      _$MovieDateItemImpl _value, $Res Function(_$MovieDateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$MovieDateItemImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieDateItemImpl implements _MovieDateItem {
  const _$MovieDateItemImpl({@JsonKey(name: 'start_date') this.date});

  factory _$MovieDateItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieDateItemImplFromJson(json);

  @override
  @JsonKey(name: 'start_date')
  final String? date;

  @override
  String toString() {
    return 'MovieDateItem(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDateItemImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of MovieDateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDateItemImplCopyWith<_$MovieDateItemImpl> get copyWith =>
      __$$MovieDateItemImplCopyWithImpl<_$MovieDateItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieDateItemImplToJson(
      this,
    );
  }
}

abstract class _MovieDateItem implements MovieDateItem {
  const factory _MovieDateItem(
      {@JsonKey(name: 'start_date') final String? date}) = _$MovieDateItemImpl;

  factory _MovieDateItem.fromJson(Map<String, dynamic> json) =
      _$MovieDateItemImpl.fromJson;

  @override
  @JsonKey(name: 'start_date')
  String? get date;

  /// Create a copy of MovieDateItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieDateItemImplCopyWith<_$MovieDateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieInfoData _$MovieInfoDataFromJson(Map<String, dynamic> json) {
  return _MovieInfoData.fromJson(json);
}

/// @nodoc
mixin _$MovieInfoData {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalTime')
  String? get totalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;

  /// Serializes this MovieInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieInfoDataCopyWith<MovieInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInfoDataCopyWith<$Res> {
  factory $MovieInfoDataCopyWith(
          MovieInfoData value, $Res Function(MovieInfoData) then) =
      _$MovieInfoDataCopyWithImpl<$Res, MovieInfoData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'totalTime') String? totalTime,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format});
}

/// @nodoc
class _$MovieInfoDataCopyWithImpl<$Res, $Val extends MovieInfoData>
    implements $MovieInfoDataCopyWith<$Res> {
  _$MovieInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? totalTime = freezed,
    Object? language = freezed,
    Object? format = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieInfoDataImplCopyWith<$Res>
    implements $MovieInfoDataCopyWith<$Res> {
  factory _$$MovieInfoDataImplCopyWith(
          _$MovieInfoDataImpl value, $Res Function(_$MovieInfoDataImpl) then) =
      __$$MovieInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'totalTime') String? totalTime,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format});
}

/// @nodoc
class __$$MovieInfoDataImplCopyWithImpl<$Res>
    extends _$MovieInfoDataCopyWithImpl<$Res, _$MovieInfoDataImpl>
    implements _$$MovieInfoDataImplCopyWith<$Res> {
  __$$MovieInfoDataImplCopyWithImpl(
      _$MovieInfoDataImpl _value, $Res Function(_$MovieInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? totalTime = freezed,
    Object? language = freezed,
    Object? format = freezed,
  }) {
    return _then(_$MovieInfoDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieInfoDataImpl implements _MovieInfoData {
  const _$MovieInfoDataImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'totalTime') this.totalTime,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'format') this.format});

  factory _$MovieInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieInfoDataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'totalTime')
  final String? totalTime;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'format')
  final String? format;

  @override
  String toString() {
    return 'MovieInfoData(name: $name, totalTime: $totalTime, language: $language, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieInfoDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.format, format) || other.format == format));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, totalTime, language, format);

  /// Create a copy of MovieInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieInfoDataImplCopyWith<_$MovieInfoDataImpl> get copyWith =>
      __$$MovieInfoDataImplCopyWithImpl<_$MovieInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieInfoDataImplToJson(
      this,
    );
  }
}

abstract class _MovieInfoData implements MovieInfoData {
  const factory _MovieInfoData(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'totalTime') final String? totalTime,
      @JsonKey(name: 'language') final String? language,
      @JsonKey(name: 'format') final String? format}) = _$MovieInfoDataImpl;

  factory _MovieInfoData.fromJson(Map<String, dynamic> json) =
      _$MovieInfoDataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'totalTime')
  String? get totalTime;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'format')
  String? get format;

  /// Create a copy of MovieInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieInfoDataImplCopyWith<_$MovieInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieInfoModel _$MovieInfoModelFromJson(Map<String, dynamic> json) {
  return _MovieInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MovieInfoModel {
  @JsonKey(name: 'status')
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalTime')
  String? get totalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'theaters')
  List<InfoTheaterItem>? get theaters => throw _privateConstructorUsedError;

  /// Serializes this MovieInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieInfoModelCopyWith<MovieInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieInfoModelCopyWith<$Res> {
  factory $MovieInfoModelCopyWith(
          MovieInfoModel value, $Res Function(MovieInfoModel) then) =
      _$MovieInfoModelCopyWithImpl<$Res, MovieInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'totalTime') String? totalTime,
      @JsonKey(name: 'theaters') List<InfoTheaterItem>? theaters});
}

/// @nodoc
class _$MovieInfoModelCopyWithImpl<$Res, $Val extends MovieInfoModel>
    implements $MovieInfoModelCopyWith<$Res> {
  _$MovieInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? totalTime = freezed,
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
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      theaters: freezed == theaters
          ? _value.theaters
          : theaters // ignore: cast_nullable_to_non_nullable
              as List<InfoTheaterItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieInfoModelImplCopyWith<$Res>
    implements $MovieInfoModelCopyWith<$Res> {
  factory _$$MovieInfoModelImplCopyWith(_$MovieInfoModelImpl value,
          $Res Function(_$MovieInfoModelImpl) then) =
      __$$MovieInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'totalTime') String? totalTime,
      @JsonKey(name: 'theaters') List<InfoTheaterItem>? theaters});
}

/// @nodoc
class __$$MovieInfoModelImplCopyWithImpl<$Res>
    extends _$MovieInfoModelCopyWithImpl<$Res, _$MovieInfoModelImpl>
    implements _$$MovieInfoModelImplCopyWith<$Res> {
  __$$MovieInfoModelImplCopyWithImpl(
      _$MovieInfoModelImpl _value, $Res Function(_$MovieInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? totalTime = freezed,
    Object? theaters = freezed,
  }) {
    return _then(_$MovieInfoModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as String?,
      theaters: freezed == theaters
          ? _value._theaters
          : theaters // ignore: cast_nullable_to_non_nullable
              as List<InfoTheaterItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieInfoModelImpl implements _MovieInfoModel {
  const _$MovieInfoModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'totalTime') this.totalTime,
      @JsonKey(name: 'theaters') final List<InfoTheaterItem>? theaters})
      : _theaters = theaters;

  factory _$MovieInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieInfoModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final int? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'totalTime')
  final String? totalTime;
  final List<InfoTheaterItem>? _theaters;
  @override
  @JsonKey(name: 'theaters')
  List<InfoTheaterItem>? get theaters {
    final value = _theaters;
    if (value == null) return null;
    if (_theaters is EqualUnmodifiableListView) return _theaters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieInfoModel(status: $status, message: $message, totalTime: $totalTime, theaters: $theaters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieInfoModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            const DeepCollectionEquality().equals(other._theaters, _theaters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, totalTime,
      const DeepCollectionEquality().hash(_theaters));

  /// Create a copy of MovieInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieInfoModelImplCopyWith<_$MovieInfoModelImpl> get copyWith =>
      __$$MovieInfoModelImplCopyWithImpl<_$MovieInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MovieInfoModel implements MovieInfoModel {
  const factory _MovieInfoModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'totalTime') final String? totalTime,
          @JsonKey(name: 'theaters') final List<InfoTheaterItem>? theaters}) =
      _$MovieInfoModelImpl;

  factory _MovieInfoModel.fromJson(Map<String, dynamic> json) =
      _$MovieInfoModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  int? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'totalTime')
  String? get totalTime;
  @override
  @JsonKey(name: 'theaters')
  List<InfoTheaterItem>? get theaters;

  /// Create a copy of MovieInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieInfoModelImplCopyWith<_$MovieInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InfoTheaterItem _$InfoTheaterItemFromJson(Map<String, dynamic> json) {
  return _InfoTheaterItem.fromJson(json);
}

/// @nodoc
mixin _$InfoTheaterItem {
  @JsonKey(name: 'theater_name')
  String? get theaterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'timings')
  List<InfoTheaterTime>? get timings => throw _privateConstructorUsedError;

  /// Serializes this InfoTheaterItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfoTheaterItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoTheaterItemCopyWith<InfoTheaterItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoTheaterItemCopyWith<$Res> {
  factory $InfoTheaterItemCopyWith(
          InfoTheaterItem value, $Res Function(InfoTheaterItem) then) =
      _$InfoTheaterItemCopyWithImpl<$Res, InfoTheaterItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'theater_name') String? theaterName,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'timings') List<InfoTheaterTime>? timings});
}

/// @nodoc
class _$InfoTheaterItemCopyWithImpl<$Res, $Val extends InfoTheaterItem>
    implements $InfoTheaterItemCopyWith<$Res> {
  _$InfoTheaterItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoTheaterItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theaterName = freezed,
    Object? location = freezed,
    Object? timings = freezed,
  }) {
    return _then(_value.copyWith(
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timings: freezed == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as List<InfoTheaterTime>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoTheaterItemImplCopyWith<$Res>
    implements $InfoTheaterItemCopyWith<$Res> {
  factory _$$InfoTheaterItemImplCopyWith(_$InfoTheaterItemImpl value,
          $Res Function(_$InfoTheaterItemImpl) then) =
      __$$InfoTheaterItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'theater_name') String? theaterName,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'timings') List<InfoTheaterTime>? timings});
}

/// @nodoc
class __$$InfoTheaterItemImplCopyWithImpl<$Res>
    extends _$InfoTheaterItemCopyWithImpl<$Res, _$InfoTheaterItemImpl>
    implements _$$InfoTheaterItemImplCopyWith<$Res> {
  __$$InfoTheaterItemImplCopyWithImpl(
      _$InfoTheaterItemImpl _value, $Res Function(_$InfoTheaterItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoTheaterItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theaterName = freezed,
    Object? location = freezed,
    Object? timings = freezed,
  }) {
    return _then(_$InfoTheaterItemImpl(
      theaterName: freezed == theaterName
          ? _value.theaterName
          : theaterName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      timings: freezed == timings
          ? _value._timings
          : timings // ignore: cast_nullable_to_non_nullable
              as List<InfoTheaterTime>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoTheaterItemImpl implements _InfoTheaterItem {
  const _$InfoTheaterItemImpl(
      {@JsonKey(name: 'theater_name') this.theaterName,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'timings') final List<InfoTheaterTime>? timings})
      : _timings = timings;

  factory _$InfoTheaterItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoTheaterItemImplFromJson(json);

  @override
  @JsonKey(name: 'theater_name')
  final String? theaterName;
  @override
  @JsonKey(name: 'location')
  final String? location;
  final List<InfoTheaterTime>? _timings;
  @override
  @JsonKey(name: 'timings')
  List<InfoTheaterTime>? get timings {
    final value = _timings;
    if (value == null) return null;
    if (_timings is EqualUnmodifiableListView) return _timings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InfoTheaterItem(theaterName: $theaterName, location: $location, timings: $timings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoTheaterItemImpl &&
            (identical(other.theaterName, theaterName) ||
                other.theaterName == theaterName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._timings, _timings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, theaterName, location,
      const DeepCollectionEquality().hash(_timings));

  /// Create a copy of InfoTheaterItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoTheaterItemImplCopyWith<_$InfoTheaterItemImpl> get copyWith =>
      __$$InfoTheaterItemImplCopyWithImpl<_$InfoTheaterItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoTheaterItemImplToJson(
      this,
    );
  }
}

abstract class _InfoTheaterItem implements InfoTheaterItem {
  const factory _InfoTheaterItem(
          {@JsonKey(name: 'theater_name') final String? theaterName,
          @JsonKey(name: 'location') final String? location,
          @JsonKey(name: 'timings') final List<InfoTheaterTime>? timings}) =
      _$InfoTheaterItemImpl;

  factory _InfoTheaterItem.fromJson(Map<String, dynamic> json) =
      _$InfoTheaterItemImpl.fromJson;

  @override
  @JsonKey(name: 'theater_name')
  String? get theaterName;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'timings')
  List<InfoTheaterTime>? get timings;

  /// Create a copy of InfoTheaterItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoTheaterItemImplCopyWith<_$InfoTheaterItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InfoTheaterTime _$InfoTheaterTimeFromJson(Map<String, dynamic> json) {
  return _InfoTheaterTime.fromJson(json);
}

/// @nodoc
mixin _$InfoTheaterTime {
  @JsonKey(name: 'screen')
  String? get screen => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen_id')
  String? get screenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;

  /// Serializes this InfoTheaterTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfoTheaterTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoTheaterTimeCopyWith<InfoTheaterTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoTheaterTimeCopyWith<$Res> {
  factory $InfoTheaterTimeCopyWith(
          InfoTheaterTime value, $Res Function(InfoTheaterTime) then) =
      _$InfoTheaterTimeCopyWithImpl<$Res, InfoTheaterTime>;
  @useResult
  $Res call(
      {@JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'screen_id') String? screenId,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'end_time') String? endTime});
}

/// @nodoc
class _$InfoTheaterTimeCopyWithImpl<$Res, $Val extends InfoTheaterTime>
    implements $InfoTheaterTimeCopyWith<$Res> {
  _$InfoTheaterTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoTheaterTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = freezed,
    Object? screenId = freezed,
    Object? language = freezed,
    Object? format = freezed,
    Object? startDate = freezed,
    Object? startTime = freezed,
    Object? endDate = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
      screenId: freezed == screenId
          ? _value.screenId
          : screenId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoTheaterTimeImplCopyWith<$Res>
    implements $InfoTheaterTimeCopyWith<$Res> {
  factory _$$InfoTheaterTimeImplCopyWith(_$InfoTheaterTimeImpl value,
          $Res Function(_$InfoTheaterTimeImpl) then) =
      __$$InfoTheaterTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'screen') String? screen,
      @JsonKey(name: 'screen_id') String? screenId,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'end_time') String? endTime});
}

/// @nodoc
class __$$InfoTheaterTimeImplCopyWithImpl<$Res>
    extends _$InfoTheaterTimeCopyWithImpl<$Res, _$InfoTheaterTimeImpl>
    implements _$$InfoTheaterTimeImplCopyWith<$Res> {
  __$$InfoTheaterTimeImplCopyWithImpl(
      _$InfoTheaterTimeImpl _value, $Res Function(_$InfoTheaterTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoTheaterTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? screen = freezed,
    Object? screenId = freezed,
    Object? language = freezed,
    Object? format = freezed,
    Object? startDate = freezed,
    Object? startTime = freezed,
    Object? endDate = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$InfoTheaterTimeImpl(
      screen: freezed == screen
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as String?,
      screenId: freezed == screenId
          ? _value.screenId
          : screenId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoTheaterTimeImpl implements _InfoTheaterTime {
  const _$InfoTheaterTimeImpl(
      {@JsonKey(name: 'screen') this.screen,
      @JsonKey(name: 'screen_id') this.screenId,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'end_time') this.endTime});

  factory _$InfoTheaterTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoTheaterTimeImplFromJson(json);

  @override
  @JsonKey(name: 'screen')
  final String? screen;
  @override
  @JsonKey(name: 'screen_id')
  final String? screenId;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;

  @override
  String toString() {
    return 'InfoTheaterTime(screen: $screen, screenId: $screenId, language: $language, format: $format, startDate: $startDate, startTime: $startTime, endDate: $endDate, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoTheaterTimeImpl &&
            (identical(other.screen, screen) || other.screen == screen) &&
            (identical(other.screenId, screenId) ||
                other.screenId == screenId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, screen, screenId, language,
      format, startDate, startTime, endDate, endTime);

  /// Create a copy of InfoTheaterTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoTheaterTimeImplCopyWith<_$InfoTheaterTimeImpl> get copyWith =>
      __$$InfoTheaterTimeImplCopyWithImpl<_$InfoTheaterTimeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoTheaterTimeImplToJson(
      this,
    );
  }
}

abstract class _InfoTheaterTime implements InfoTheaterTime {
  const factory _InfoTheaterTime(
          {@JsonKey(name: 'screen') final String? screen,
          @JsonKey(name: 'screen_id') final String? screenId,
          @JsonKey(name: 'language') final String? language,
          @JsonKey(name: 'format') final String? format,
          @JsonKey(name: 'start_date') final String? startDate,
          @JsonKey(name: 'start_time') final String? startTime,
          @JsonKey(name: 'end_date') final String? endDate,
          @JsonKey(name: 'end_time') final String? endTime}) =
      _$InfoTheaterTimeImpl;

  factory _InfoTheaterTime.fromJson(Map<String, dynamic> json) =
      _$InfoTheaterTimeImpl.fromJson;

  @override
  @JsonKey(name: 'screen')
  String? get screen;
  @override
  @JsonKey(name: 'screen_id')
  String? get screenId;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;

  /// Create a copy of InfoTheaterTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoTheaterTimeImplCopyWith<_$InfoTheaterTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
