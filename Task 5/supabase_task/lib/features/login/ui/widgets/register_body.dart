import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_task/core/routing/routes.dart';
import 'package:supabase_task/core/services/auth_with_supabase.dart';
import 'package:supabase_task/core/widgets/custom_material_button.dart';
import 'package:supabase_task/features/login/ui/widgets/custom_text_form_field.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key, required this.email, required this.password});
  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email', style: TextStyle(fontSize: 22)),
          CustomTextFormField(controller: email, hintText: 'example@gmail.com'),
          SizedBox(height: 15),
          Text('Password', style: TextStyle(fontSize: 22)),
          CustomTextFormField(controller: password, hintText: 'password'),
          SizedBox(height: 30),
          CustomMaterialButton(
            name: 'Register',
            onPressed: () {
              AuthWithSupabase.register(
                email: email.text,
                password: password.text,
              );
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Register Success! ,check your email and confirm it",
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),

          Align(
            child: RichText(
              text: TextSpan(
                text: 'You haven an account?',
                style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.go(Routes.login);
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
