import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:messenger/config/router/routes.dart';
import 'package:messenger/data/repositories/auth_repository.dart';
import 'package:messenger/ui/view_models/login_view_model.dart';
import 'package:messenger/ui/view_models/logout_view_model.dart';
import 'package:messenger/ui/views/screens/chats_screen.dart';
import 'package:messenger/ui/views/screens/login_screen.dart';
import 'package:provider/provider.dart';

GoRouter router(AuthRepository authRepository) => GoRouter(
  initialLocation: Routes.home,
  redirect: _redirect,
  refreshListenable: authRepository,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginScreen(
        viewModel: LoginViewModel(authRepository: context.read())
      ),
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) => ChatsScreen(
        viewModel: LogoutViewModel(authRepository: context.read())
      ),
    ),
  ]
);

Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  final loggedIn = await context.read<AuthRepository>().isAuthenticated;
  final loggingIn = state.matchedLocation == Routes.login;
  
  if (!loggedIn) {
    return Routes.login;
  }

  if (loggingIn) {
    return Routes.home;
  }

  return null;
}