import 'package:flutter/material.dart';
import 'custom_text_field.dart';
import '../widgets/custom_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final TextEditingController _username;
  late final TextEditingController _password;
  late final FocusNode _usernameFocusNode;
  late final FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
    _usernameFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Log In',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Color(0xFF1A1A23),
          ),
        ),
        const SizedBox(height: 16),
        CustomTextField(
          controller: _username,
          focusNode: _usernameFocusNode,
          hintText: 'usuario@grupocabreramedina.com',
          obscureText: false,
        ),
        const SizedBox(height: 16),
        CustomTextField(
          controller: _password,
          focusNode: _passwordFocusNode,
          hintText: 'Contraseña',
          obscureText: true,
        ),
        const SizedBox(height: 16),
        CustomButton(
          onPressed: () {},
          text: 'Login',
          icon: Icons.arrow_forward,
        ),
      ],
    );
  }
}