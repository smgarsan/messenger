import 'package:flutter/material.dart';
import 'package:messenger/ui/views/screens/chats_screen.dart';
import 'package:messenger/ui/views/screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
    );
  }
}
