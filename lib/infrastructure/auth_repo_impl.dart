import 'package:dio/dio.dart';
import 'package:home_chief/domain/model/auth_model.dart';
import 'package:home_chief/domain/repository/auth_repo.dart';
import 'package:home_chief/shared/app_uri.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  authenticateUser(UserModel model) async {
    final _signInData = '''{
      "mobile": "${model.phone}",
      "password":"${model.password}"}
      ''';
    try {
      await dio.post(AppUri.loginUri, data: _signInData);
    } on DioError catch (e) {
      throw AuthError.fromJson(e.response?.data);
    }
  }

  @override
  createUser(UserModel model) async {
    final _registerUserData = '''{
      "name": "${model.name}",
      "email": "${model.email}",
      "mobile": "${model.phone}",
      "password":"${model.password}"}
      ''';

    try {
      await dio.post(AppUri.registerUri, data: _registerUserData);
    } on DioError catch (e) {
      throw AuthError.fromJson(e.response?.data);
    }
  }
}
