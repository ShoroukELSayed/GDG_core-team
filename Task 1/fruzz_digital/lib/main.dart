import 'package:flutter/material.dart';
import 'package:task1/screens/register_screen.dart';
import 'package:task1/screens/welcome_screen.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        Welcome.id: (context) => const Welcome(),
      },
      initialRoute: Welcome.id,
    );
  }
}
