import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_tasks/core/routing/routes.dart';
import 'package:supabase_tasks/core/services/auth_with_supabase.dart';
import 'package:supabase_tasks/core/widgets/custom_material_button.dart';
import 'package:supabase_tasks/features/login/ui/widgets/custom_text_form_field.dart';
import 'package:supabase_tasks/generated/l10n.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key, required this.email, required this.password});

  final TextEditingController email;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context).email, style: TextStyle(fontSize: 22)),
          CustomTextFormField(controller: email, hintText: 'example@gmail.com'),
          SizedBox(height: 15),
          Text( AppLocalizations.of(context).password, style: TextStyle(fontSize: 22)),
          CustomTextFormField(controller: password, hintText: AppLocalizations.of(context).password),
          SizedBox(height: 30),
          CustomMaterialButton(
            name: AppLocalizations.of(context).loginTitle,
            onPressed: () {
              AuthWithSupabase.login(
                email: email.text,
                password: password.text,
              );
              ScaffoldMessenger.of(
                context,
              ).showSnackBar( SnackBar(content: Text( AppLocalizations.of(context).loginSuccess)));
              context.go(Routes.home);
            },
          ),
          SizedBox(height: 20),

          Align(
            child: RichText(
              text: TextSpan(
                text: AppLocalizations.of(context).haveAccount,
                style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                children: [
                  TextSpan(
                    text: AppLocalizations.of(context).registerTitle,
                    style: TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.go(Routes.register);
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
