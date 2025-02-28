import 'package:flutter/foundation.dart';
import '../../../utils/result.dart';

abstract class AuthRepository extends ChangeNotifier {
  Future<bool> get isAuthenticated;
  
  Future<Result<void>> login({
    required String username,
    required String password,
  });

  Future<Result<void>> logout();
}