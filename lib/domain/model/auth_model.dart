import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_model.g.dart';
part 'auth_model.freezed.dart';


@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel.error(String message) = AuthError;

  const factory AuthModel.set(
      {String? name,
      String? email,
      required String phone,
      required String password}) = UserModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
