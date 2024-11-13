import 'package:flutter/material.dart';
import 'package:task1/screens/welcome.dart';

import 'screens/login.dart';
import 'screens/register.dart';

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
        Login.id: (context) => const Login(),
        Register.id: (context) => const Register(),
        Welcome.id: (context) => const Welcome(),
      },
      initialRoute: Welcome.id,
    );
  }
}
