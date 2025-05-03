import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/helper/form_validator.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/services/login_request.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/custom_text_form_field.dart';
import 'package:marketi_app/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:marketi_app/features/auth/logic/login_cubit/login_states.dart';
import 'package:marketi_app/features/auth/ui/widgets/remember.dart';
import 'package:marketi_app/features/auth/ui/widgets/rich_text_section.dart';
import 'package:marketi_app/features/auth/ui/widgets/social_media_icons.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.go(Routes.navigation);
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Login Success!")));
        } else if (state is LoginError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('On Snap!')),
          );
          log(state.errorMessage);
        }
      },
      builder: (context, state) {
        return Form(
          key: key,
          autovalidateMode: autovalidateMode,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                Image.asset(Assets.assetsImagesLogoSplashScreen),
                CustomTextFormField(
                  controller: emailController,
                  validator: FormValidator.validateEmail,
                  hintText: 'Username or Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
                const Gap(14),
                CustomTextFormField(
                  controller: passwordController,
                  obscureText: true,
                  validator: FormValidator.validatePassword,
                  hintText: 'Enter Your Password',
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
                const Gap(6),
                const Remember(),
                const Gap(21),
                CustomButton.primary(
                    isLoading: state is LoginLoading,
                    text: 'Log In',
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        autovalidateMode = AutovalidateMode.disabled;
                        final loginRequest = LoginRequest(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        context.read<LoginCubit>().loginUser(loginRequest);
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    }),
                const Gap(14),
                Text('Or Continue With',
                    textAlign: TextAlign.center, style: AppStyles.regular12),
                const Gap(16),
                const SocialMediaIcons(),
                const Gap(14),
                const RichTextSection(),
              ],
            ),
          ),
        );
      },
    );
  }
}
