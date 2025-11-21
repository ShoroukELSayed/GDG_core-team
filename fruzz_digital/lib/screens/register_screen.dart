import 'package:flutter/material.dart';
import 'package:task1/constants/assets.dart';
import 'package:task1/models/user_model.dart';
import 'package:task1/screens/login_screen.dart';
import 'package:task1/services/form_validator.dart';
import 'package:task1/widgets/back_icon.dart';
import 'package:task1/widgets/custom_elevated_button.dart';
import 'package:task1/widgets/custom_text_form_field.dart';
import 'package:task1/widgets/header_text.dart';
import 'package:task1/widgets/section_divider.dart';
import 'package:task1/widgets/social_login_button.dart';

import '../widgets/hyper_link.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static String id = 'register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            const SizedBox(height: 20),
            const HeaderText(text: 'Hello! Register to get started'),
            const SizedBox(height: 20),
            Form(
              key: key,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  CustomTextFormField(
                    onChanged: (value) {
                      userModel.username = value ?? '';
                    },
                    validator: FormValidator.validateUsername,
                    hint: 'Username',
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (value) {
                      userModel.email = value ?? '';
                    },
                    validator: FormValidator.validateEmail,
                    hint: 'Email',
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (value) {
                      userModel.password = value ?? '';
                    },
                    validator: FormValidator.validatePassword,
                    hint: 'Password',
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (value) {
                      userModel.confirmPassword = value ?? '';
                    },
                    validator: (value) {
                      return FormValidator.confirmPassword(
                          userModel.password, value);
                    },
                    hint: 'Confirm password',
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    colorButton: Colors.black,
                    name: 'Register',
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
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SectionDivider(text: 'Or Register with'),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialLoginButton(image: Assets.resourceImagesFacebook),
                SocialLoginButton(image: Assets.resourceImagesGoogle),
                SocialLoginButton(image: Assets.resourceImagesApple),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  const Text('Already have an account? '),
                  HyperLink(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    text: ' Login Now',
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
