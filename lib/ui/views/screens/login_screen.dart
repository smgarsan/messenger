import 'package:flutter/material.dart';
import 'package:messenger/ui/views/widgets/login_form.dart';
import 'package:messenger/ui/views/widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Logo()
                ),
                const SizedBox(height: 32),
                const LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}