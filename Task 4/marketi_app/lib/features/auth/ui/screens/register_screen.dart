import 'package:flutter/material.dart';
import 'package:marketi_app/features/auth/ui/widgets/rsgister_body.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const String id = 'RegisterScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RsgisterBody(),
    );
  }
}
