import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/api/dio_consumer.dart';
import 'package:marketi_app/core/helper/form_validator.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/features/auth/data/models/reset_pass_request.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/user_info_item.dart';
import 'package:marketi_app/features/auth/data/logic/auth_cubit/auth_cubit.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key, required this.email});

  static const String id = 'CreateNewPassword';
  final String email;

  @override
  Widget build(BuildContext context) {
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return BlocProvider(
      create: (context) => AuthCubit(ApiServices(DioConsumer(dio: Dio()))),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is ResetPasswordSuccess) {
            context.push(Routes.congratulations);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Password reset successfully')),
            );
          } else if (state is ResetPasswordError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('On Snap!')),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: ListView(
                children: [
                  const CustomAppBar(
                    title: 'Create New Password',
                  ),
                  Gap(57.h),
                  Image.asset(
                    Assets.assetsImagesIllustrationCreateNewPassword,
                    height: 200.h,
                  ),
                  Gap(22.h),
                  Text(
                    'New password must be\n different from last password',
                    textAlign: TextAlign.center,
                    style: AppStyles.medium16,
                  ),
                  Gap(22.h),
                  UserInfoItem(
                    controller: passwordController,
                    obscureText: true,
                    validator: FormValidator.validatePassword,
                    label: 'Password',
                    hintText: 'Enter Your Password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: const Icon(Icons.visibility_off),
                  ),
                  UserInfoItem(
                    controller: confirmPasswordController,
                    obscureText: true,
                    validator: (value) {
                      return FormValidator.validateConfirmPassword(
                        passwordController.text,
                        confirmPasswordController.text,
                      );
                    },
                    label: 'Confirm Password',
                    hintText: 'confirm Your Password',
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: const Icon(Icons.visibility_off),
                  ),
                  Gap(22.h),
                  CustomButton.primary(
                    text: 'Save Password',
                    isLoading: state is ResetPasswordLoading,
                    onPressed: () {
                      final resetPassRequest = ResetPassRequestModel(
                        email: email,
                        password: passwordController.text,
                        confirmPassword: confirmPasswordController.text,
                      );
                      context.read<AuthCubit>().resetPassword(resetPassRequest);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
