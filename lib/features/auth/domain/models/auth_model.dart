import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class LoginRequestModel with _$LoginRequestModel {
  const factory LoginRequestModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'password') String? password,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
}

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'authToken') String? authToken,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'password') String? password,
  }) = _RegisterRequestModel;

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
}

@freezed
class RegisterResponseModel with _$RegisterResponseModel {
  const factory RegisterResponseModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}

@freezed
class OTPVerificationRequestModel with _$OTPVerificationRequestModel {
  const factory OTPVerificationRequestModel({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'otp') String? otp,
    @JsonKey(name: 'isRegistration') bool? isRegistration,
  }) = _OTPVerificationRequestModel;

  factory OTPVerificationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OTPVerificationRequestModelFromJson(json);
}

@freezed
class OTPVerificationResponseModel with _$OTPVerificationResponseModel {
  const factory OTPVerificationResponseModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
  }) = _OTPVerificationResponseModel;

  factory OTPVerificationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OTPVerificationResponseModelFromJson(json);
}

@freezed
class LogoutResponseModel with _$LogoutResponseModel {
  const factory LogoutResponseModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
  }) = _LogoutResponseModel;

  factory LogoutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseModelFromJson(json);
}

@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'user') UserData? user,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'status') String? status,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
