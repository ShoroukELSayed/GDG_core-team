import 'package:flutter/material.dart';
import 'package:task1/models/user_model.dart';
import 'package:task1/screens/register.dart';
import 'package:task1/services/form_validator.dart';
import 'package:task1/widgets/back_icon.dart';
import 'package:task1/widgets/custom_elevated_button.dart';
import 'package:task1/widgets/custom_text_form_field.dart';
import 'package:task1/widgets/header_text.dart';
import 'package:task1/widgets/hyper_link.dart';
import 'package:task1/widgets/section_divider.dart';
import 'package:task1/widgets/social_login_button.dart';
import 'package:task1/constants/assets.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static String id = 'login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  UserModel userModel = UserModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            const BackIcon(),
            const SizedBox(height: 30),
            const HeaderText(text: 'Welcome back! Glad to see you, Again!'),
            const SizedBox(height: 20),
            Form(
              key: key,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  CustomTextFormField(
                    hint: 'Enter your email',
                    validator: FormValidator.validateEmail,
                    onChanged: (value) {
                      userModel.email = value ?? '';
                    },
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    hint: 'Enter your password',
                    validator: FormValidator.validatePassword,
                    onChanged: (value) {
                      userModel.confirmPassword ?? '';
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            HyperLink(
              text: 'Forgot Password?',
              color: const Color.fromRGBO(97, 97, 97, 1),
              alignment: Alignment.bottomRight,
            ),
            const SizedBox(height: 30),
            CustomElevatedButton(
              colorButton: Colors.black,
              name: 'Login',
              onPressed: () {
                if (key.currentState!.validate()) {
                  key.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              },
              colorText: Colors.white,
            ),
            const SizedBox(height: 25),
            const SectionDivider(text: "Or Login with"),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialLoginButton(image: Assets.resourceImagesFacebook),
                SocialLoginButton(image: Assets.resourceImagesGoogle),
                SocialLoginButton(image: Assets.resourceImagesApple),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 100),
              child: Row(
                children: [
                  const Text('Don’t have an account?'),
                  HyperLink(
                    onTap: () {
                      Navigator.pushNamed(context, Register.id);
                    },
                    text: ' Register Now',
                    color: const Color(0xff00CCC8),
                    alignment: Alignment.bottomCenter,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
