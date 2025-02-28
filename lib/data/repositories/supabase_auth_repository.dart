import 'package:messenger/data/repositories/auth_repository.dart';
import 'package:messenger/data/services/supabase_auth_service.dart';
import 'package:messenger/utils/result.dart';

class SupabaseAuthRepository extends AuthRepository {
  final SupabaseAuthService _authService;

  SupabaseAuthRepository({required SupabaseAuthService authService})
      : _authService = authService;

  @override
  Future<bool> get isAuthenticated async {
    final session = _authService.getCurrentSession();

    switch (session) {
      case Ok():
        return true;
      case Error():
        return false;
    }
  }

  @override
  Future<Result<void>> login({
    required String username,
    required String password,
  }) async {
    try {
      await _authService.login(username, password);
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    } finally {
      notifyListeners();
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      await _authService.logout();
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception(e));
    } finally {
      notifyListeners();
    }
  }
}
