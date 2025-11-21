import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/helper/form_validator.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/features/auth/data/models/login_models.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/custom_text_form_field.dart';
import 'package:marketi_app/features/auth/data/logic/auth_cubit/auth_cubit.dart';
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
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.go(Routes.navigation);
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.response.message)));
        } else if (state is LoginError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: key,
          autovalidateMode: autovalidateMode,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: ListView(
              children: [
                Image.asset(Assets.assetsImagesLogoSplashScreen),
                CustomTextFormField(
                  controller: emailController,
                  validator: FormValidator.validateEmail,
                  hintText: 'Username or Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                ),
                Gap(14.h),
                CustomTextFormField(
                  controller: passwordController,
                  obscureText: true,
                  validator: FormValidator.validatePassword,
                  hintText: 'Enter Your Password',
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
                Gap(6.h),
                const Remember(),
                Gap(21.h),
                CustomButton.primary(
                    isLoading: state is LoginLoading,
                    text: 'Log In',
                    onPressed: () async {
                      if (key.currentState!.validate())  {
                        autovalidateMode = AutovalidateMode.disabled;
                        final loginRequest = LoginRequestModel(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        context.read<AuthCubit>().loginUser(loginRequest);
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    }),
                Gap(14.h),
                Text('Or Continue With',
                    textAlign: TextAlign.center, style: AppStyles.regular12),
                Gap(16.h),
                const SocialMediaIcons(),
                Gap(14.h),
                const RichTextSection(),
              ],
            ),
          ),
        );
      },
    );
  }
}
