import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/helper/form_validator.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/core/services/reset_pass_request.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/user_info_item.dart';
import 'package:marketi_app/features/auth/logic/reset_pass_cubit/reset_pass_cubit.dart';
import 'package:marketi_app/features/auth/logic/reset_pass_cubit/reset_pass_states.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key, required this.email});

  static const String id = 'CreateNewPassword';
  final String email;
  @override
  Widget build(BuildContext context) {
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return BlocProvider(
      create: (context) => ResetPassCubit(ApiServices()),
      child: BlocConsumer<ResetPassCubit, ResetPasswordStates>(
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  const CustomAppBar(
                    title: 'Create New Password',
                  ),
                  const Gap(57),
                  Image.asset(Assets.assetsImagesIllustrationCreateNewPassword),
                  const Gap(22),
                  Text(
                    'New password must be\n different from last password',
                    textAlign: TextAlign.center,
                    style: AppStyles.medium16,
                  ),
                  const Gap(22),
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
                  const Gap(22),
                  CustomButton.primary(
                      text: 'Save Password',
                      isLoading: state is ResetPasswordLoading,
                      onPressed: () {
                        final resetPassRequest = ResetPassRequest(
                          email: email,
                          password: passwordController.text,
                          confirmPassword: confirmPasswordController.text,
                        );
                        context
                            .read<ResetPassCubit>()
                            .resetPassword(resetPassRequest);
                        
                      }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
