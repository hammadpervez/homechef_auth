import 'package:dio/dio.dart';
import 'package:home_chief/domain/model/auth_model.dart';

abstract class AuthRepo {
  final Dio _dio = Dio();
   Dio get dio => _dio;
  authenticateUser(UserModel model);
  createUser(UserModel model);
}
