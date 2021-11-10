import 'package:home_chief/domain/services/auth_service.dart';
import 'package:home_chief/infrastructure/auth_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authService = ChangeNotifierProvider((ref) => AuthService(AuthRepoImpl()));
