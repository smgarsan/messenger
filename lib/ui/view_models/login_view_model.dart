import 'package:flutter/material.dart';
import 'package:messenger/data/repositories/auth_repository.dart';
import 'package:messenger/utils/command.dart';
import 'package:messenger/utils/result.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;
  late Command1 login;

  LoginViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    login = Command1<void,(String username, String password)>(_login);
  }

  Future<Result<void>> _login((String, String) credentials) async {
    final (username, password) = credentials;
    final result = await _authRepository.login(
      username: username,
      password: password,
    );

    if (result is Error<void>) {
    }

    return result;
  }
}
