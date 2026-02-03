// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieListModelImpl _$$MovieListModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieListModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      totalCount: (json['totalCount'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieListModelImplToJson(
        _$MovieListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'movies': instance.movies,
    };

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      movieName: json['movie_name'] as String?,
      posterImage: json['poster_image'] as String?,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'movie_name': instance.movieName,
      'poster_image': instance.posterImage,
    };

_$MovieDetailsResponseModelImpl _$$MovieDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailsResponseModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      movie: json['movie'] == null
          ? null
          : MovieDetailsModel.fromJson(json['movie'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MovieDetailsResponseModelImplToJson(
        _$MovieDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'movie': instance.movie,
    };

_$MovieDetailsModelImpl _$$MovieDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieDetailsModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      posterImage: json['poster_image'] as String?,
      releaseDate: json['release_date'] as String?,
      releaseYear: json['release_year'] as String?,
      totalTime: json['total_time'] as String?,
      ageCategory: json['age_category'] as String?,
      genres: json['genres'] as String?,
      trailer: json['trailer'] as String?,
      description: json['description'] as String?,
      availableLanguages: json['available_languages'] as String?,
      availableFormats: json['available_formats'] as String?,
      casts: (json['casts'] as List<dynamic>?)
          ?.map((e) => MovieMemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      crews: (json['crews'] as List<dynamic>?)
          ?.map((e) => MovieMemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieDetailsModelImplToJson(
        _$MovieDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster_image': instance.posterImage,
      'release_date': instance.releaseDate,
      'release_year': instance.releaseYear,
      'total_time': instance.totalTime,
      'age_category': instance.ageCategory,
      'genres': instance.genres,
      'trailer': instance.trailer,
      'description': instance.description,
      'available_languages': instance.availableLanguages,
      'available_formats': instance.availableFormats,
      'casts': instance.casts,
      'crews': instance.crews,
    };

_$MovieMemberModelImpl _$$MovieMemberModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MovieMemberModelImpl(
      name: json['name'] as String?,
      profileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$MovieMemberModelImplToJson(
        _$MovieMemberModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profile_image': instance.profileImage,
    };

_$LanguageFormatResponseModelImpl _$$LanguageFormatResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageFormatResponseModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LanguageFormatsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LanguageFormatResponseModelImplToJson(
        _$LanguageFormatResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$LanguageFormatsModelImpl _$$LanguageFormatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageFormatsModelImpl(
      language: json['language'] as String?,
      formats:
          (json['formats'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LanguageFormatsModelImplToJson(
        _$LanguageFormatsModelImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'formats': instance.formats,
    };
