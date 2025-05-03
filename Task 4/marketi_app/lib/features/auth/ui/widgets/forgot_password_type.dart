import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/helper/form_validator.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/user_info_item.dart';
import 'package:marketi_app/features/auth/logic/forgot_pass_cubit/forgot_pass_cubit.dart';
import 'package:marketi_app/features/auth/logic/forgot_pass_cubit/forgot_pass_states.dart';

class ForgotPasswordType extends StatelessWidget {
  const ForgotPasswordType({
    super.key,
    required this.isPhone,
  });

  final bool isPhone;
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    return BlocConsumer<ForgotPassCubit, ForgotPassStates>(
      listener: (context, state) {
        if (state is ForgotPassSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Verification code sent')),
          );
        } else if (state is ForgotPassError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('On Snap!')),
          );
        }
      },
      builder: (context, state) {
        return Column(
          spacing: 22,
          children: [
            Image.asset(
              isPhone
                  ? Assets.assetsImagesIllustrationForgotPasswordWithPhone
                  : Assets.assetsImagesIllustrationForgotPasswordWithEmail,
              height: 256,
            ),
            Text(
              'Please enter your ${isPhone ? 'phone number' : 'email address'} to\n receive a verification code',
              style: AppStyles.medium16,
              textAlign: TextAlign.center,
            ),
            UserInfoItem(
              controller: isPhone ? phoneController : emailController,
              validator: isPhone
                  ? FormValidator.validatePhone
                  : FormValidator.validateEmail,
              label: isPhone ? 'Phone Number' : 'Email',
              hintText: isPhone ? '+20 1501142409 ' : 'You@gmail.com',
              prefixIcon: const Icon(Icons.phone_iphone_sharp),
            ),
            CustomButton.primary(
                text: 'Send Code',
                isLoading: state is ForgotPassLoading,
                onPressed: () {
                  if (!isPhone) {
                    final email = emailController.text;
                    context
                        .read<ForgotPassCubit>()
                        .sendForgotPasswordEmail(email);
                  }
                  context.push(
                    Routes.verificationCode,
                    extra: {
                      'type': isPhone ? 'phone' : 'email',
                      'value':
                          isPhone ? phoneController.text : emailController.text,
                    },
                  );
                }),
          ],
        );
      },
    );
  }
}
