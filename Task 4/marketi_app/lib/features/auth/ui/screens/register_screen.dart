import 'package:flutter/material.dart';
import 'package:marketi_app/features/auth/ui/widgets/resgister_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResgisterBody(),
    );
  }
}
