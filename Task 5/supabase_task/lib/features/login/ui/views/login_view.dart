import 'package:flutter/material.dart';
import 'package:supabase_task/core/utils/app_images.dart';
import 'package:supabase_task/core/widgets/custom_app_bar.dart';
import 'package:supabase_task/features/login/ui/widgets/login_body.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: CustomAppBar(
          title: 'Login',
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.resourceImagesLogoSupabase,
              fit: BoxFit.fill,
              opacity: const AlwaysStoppedAnimation(0.3),
            ),
          ),
          LoginBody(email: email, password: password),
        ],
      ),
    );
  }
}
