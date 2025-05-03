import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/services/register_request.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/features/auth/logic/register_cubit/register_cubit.dart';
import 'package:marketi_app/features/auth/logic/register_cubit/register_states.dart';
import 'package:marketi_app/features/auth/ui/widgets/register_app_bar.dart';
import 'package:marketi_app/features/auth/ui/widgets/social_media_icons.dart';
import 'package:marketi_app/features/auth/ui/widgets/user_info.dart';

class ResgisterBody extends HookWidget {
  const ResgisterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final autoValidateMode =
        useState<AutovalidateMode>(AutovalidateMode.disabled);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Register Success!")));
          } else if (state is RegisterError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('On Snap!')),
            );
            log(state.errorMessage);
          }
        },
        builder: (context, state) {
          return Form(
            key: formKey,
            autovalidateMode: autoValidateMode.value,
            child: ListView(
              children: [
                const RegisterAppBar(),
                UserInfo(
                  nameController: nameController,
                  usernameController: usernameController,
                  phoneController: phoneController,
                  emailController: emailController,
                  passwordController: passwordController,
                  confirmPasswordController: confirmPasswordController,
                ),
                const Gap(14),
                CustomButton.primary(
                    isLoading: state is RegisterLoading,
                    text: 'Sign Up',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        final registerRequest = RegisterRequest(
                          name: nameController.text,
                          phone: phoneController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          confirmPassword: confirmPasswordController.text,
                        );
                        context
                            .read<RegisterCubit>()
                            .registerUser(registerRequest);
                      } else {
                        autoValidateMode.value = AutovalidateMode.always;
                      }
                    }),
                const Gap(12),
                Text(
                  'Or Continue With',
                  textAlign: TextAlign.center,
                  style: AppStyles.regular12,
                ),
                const Gap(18),
                const SocialMediaIcons(),
              ],
            ),
          );
        },
      ),
    );
  }
}
