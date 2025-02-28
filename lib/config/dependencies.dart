import 'package:messenger/data/repositories/auth_repository.dart';
import 'package:messenger/data/repositories/supabase_auth_repository.dart';
import 'package:messenger/data/services/supabase_auth_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> get providers => [
  Provider(create: (context) => SupabaseAuthService()),
  ChangeNotifierProvider(create: (context) => SupabaseAuthRepository(
    authService: context.read()
  ) as AuthRepository
  )
];