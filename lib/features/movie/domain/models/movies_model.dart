import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies_model.freezed.dart';
part 'movies_model.g.dart';

@freezed
class MovieListModel with _$MovieListModel {
  const factory MovieListModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'currentPage') int? currentPage,
    @JsonKey(name: 'movies') List<MovieModel>? movies,
  }) = _MovieListModel;

  factory MovieListModel.fromJson(Map<String, dynamic> json) =>
      _$MovieListModelFromJson(json);
}

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: 'movie_name') String? movieName,
    @JsonKey(name: 'poster_image') String? posterImage,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
class MovieDetailsResponseModel with _$MovieDetailsResponseModel {
  const factory MovieDetailsResponseModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'movie') MovieDetailsModel? movie,
  }) = _MovieDetailsResponseModel;

  factory MovieDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsResponseModelFromJson(json);
}

@freezed
class MovieDetailsModel with _$MovieDetailsModel {
  const factory MovieDetailsModel({
    @JsonKey(name: 'id') String? id,
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
    @JsonKey(name: 'crews') List<MovieMemberModel>? crews,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);
}

@freezed
class MovieMemberModel with _$MovieMemberModel {
  const factory MovieMemberModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'profile_image') String? profileImage,
  }) = _MovieMemberModel;

  factory MovieMemberModel.fromJson(Map<String, dynamic> json) =>
      _$MovieMemberModelFromJson(json);
}

@freezed
class LanguageFormatResponseModel with _$LanguageFormatResponseModel {
  const factory LanguageFormatResponseModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<LanguageFormatsModel>? data,
  }) = _LanguageFormatResponseModel;

  factory LanguageFormatResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageFormatResponseModelFromJson(json);
}

@freezed
class LanguageFormatsModel with _$LanguageFormatsModel {
  const factory LanguageFormatsModel({
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'formats') List<String>? formats,
  }) = _LanguageFormatsModel;

  factory LanguageFormatsModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageFormatsModelFromJson(json);
}
