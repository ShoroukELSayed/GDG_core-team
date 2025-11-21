import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/api/end_points.dart';
import 'package:marketi_app/core/cache/cache_helper.dart';
import 'package:marketi_app/features/auth/data/models/sign_up_models.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/features/auth/data/logic/auth_cubit/auth_cubit.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is SignUpSuccess) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.response.message)));
          } else if (state is SignUpError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errMessage)),
            );
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
                Gap(14.h),
                CustomButton.primary(
                    isLoading: state is SignUpLoading,
                    text: 'Sign Up',
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        final registerRequest = SignUpRequestModel(
                          name: nameController.text,
                          phone: phoneController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          confirmPassword: confirmPasswordController.text,
                        );
                        context.read<AuthCubit>().registerUser(registerRequest);
                        await CacheHelper.setData(
                            key: ApiKey.name, value: nameController.text);
                        await CacheHelper.setData(
                            key: ApiKey.userName, value: usernameController.text);
                        await CacheHelper.setData(
                            key: ApiKey.email, value: emailController.text);
                      } else {
                        autoValidateMode.value = AutovalidateMode.always;
                      }
                    }),
                Gap(12.h),
                Text(
                  'Or Continue With',
                  textAlign: TextAlign.center,
                  style: AppStyles.regular12,
                ),
                Gap(18.h),
                const SocialMediaIcons(),
              ],
            ),
          );
        },
      ),
    );
  }
}
