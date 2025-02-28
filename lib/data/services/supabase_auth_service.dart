import 'package:messenger/utils/result.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthService {
  final SupabaseClient _client;

  SupabaseAuthService([SupabaseClient? client])
      : _client = client ?? Supabase.instance.client;

  Future<Result<AuthResponse>> login(String email, String password) async {
    try {
      final res = await _client.auth
          .signInWithPassword(email: email, password: password);

      if (res.session == null || res.user == null) {
        return Result.error(
            Exception('Login Error: Invalid email or password'));
      }

      return Result.ok(res);
    } catch (e) {
      return Result.error(Exception('Login error: $e'));
    }
  }

  Future<Result<void>> logout() async {
    try {
      await _client.auth.signOut();
      return Result.ok(null);
    } catch (e) {
      return Result.error(Exception('Logout Error: $e'));
    }
  }

  Result<Session> getCurrentSession() {
    final session = _client.auth.currentSession;

    if (session != null) {
      return Result.ok(session);
    }

    return Result.error(Exception('Get session error'));
  }
}
