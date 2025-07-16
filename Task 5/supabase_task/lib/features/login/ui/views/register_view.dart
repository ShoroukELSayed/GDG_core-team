import 'package:flutter/material.dart';
import 'package:supabase_task/core/utils/app_images.dart';
import 'package:supabase_task/core/widgets/custom_app_bar.dart';
import 'package:supabase_task/features/login/ui/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: CustomAppBar(title: 'Register'),
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
          RegisterBody(email: email, password: password),
        ],
      ),
    );
  }
}
