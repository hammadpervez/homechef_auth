// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthError _$$AuthErrorFromJson(Map<String, dynamic> json) => _$AuthError(
      json['message'] as String,
    );

Map<String, dynamic> _$$AuthErrorToJson(_$AuthError instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$UserModel _$$UserModelFromJson(Map<String, dynamic> json) => _$UserModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserModelToJson(_$UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
    };
