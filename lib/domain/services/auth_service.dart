import 'package:flutter/foundation.dart';

import 'package:home_chief/domain/model/auth_model.dart';
import 'package:home_chief/domain/repository/auth_repo.dart';

enum AuthStatus {
  loading,
  success,
  error,
}

class AuthService extends ChangeNotifier {
  final AuthRepo _authRepo;
  AuthService(
    AuthRepo authRepo,
  ) : _authRepo = authRepo;

  String? _error;
  AuthStatus _status = AuthStatus.loading;
  AuthStatus get status => _status;

  String? get error => _error;

  Future<void> signIn(UserModel model) async {
     _authenticate(() async {
      await _authRepo.authenticateUser(model);
    });
  }

  Future<void> signUp(UserModel model) async {
    _authenticate(() async {
      await _authRepo.createUser(model);
    });
  }

  Future<void> _authenticate(Future<void> Function() cb) async {
    try {
      reset();
      notifyListeners();
      await cb();
      _status = AuthStatus.success;
      notifyListeners();
    } on AuthError catch (e) {
      _error = e.message;
      _status = AuthStatus.error;
      notifyListeners();
    }
  }

  reset() {
    _error = null;
    _status = AuthStatus.loading;
  }
}
