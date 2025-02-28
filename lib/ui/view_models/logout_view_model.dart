import 'package:messenger/data/repositories/auth_repository.dart';
import 'package:messenger/utils/command.dart';
import 'package:messenger/utils/result.dart';

class LogoutViewModel {
  final AuthRepository _authRepository;
  late Command0 logout;

  LogoutViewModel({required AuthRepository authRepository}) 
    : _authRepository = authRepository {
    logout = Command0(_logout);    
  }

  Future<Result<void>> _logout() async {
    final res = _authRepository.logout();

    return res;
  }
}