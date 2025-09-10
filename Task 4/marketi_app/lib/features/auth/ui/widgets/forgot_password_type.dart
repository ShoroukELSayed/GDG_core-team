import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/helper/form_validator.dart';
import 'package:marketi_app/features/auth/data/models/forgot_pass_models.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/user_info_item.dart';
import 'package:marketi_app/features/auth/data/logic/auth_cubit/auth_cubit.dart';

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

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ForgotPassSuccess) {
          context.push(
            Routes.verificationCode,
            extra: {
              'type': isPhone ? 'phone' : 'email',
              'value': isPhone ? phoneController.text : emailController.text,
            },
          );
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
          spacing: 22.h, 
          children: [
            Image.asset(
              isPhone
                  ? Assets.assetsImagesIllustrationForgotPasswordWithPhone
                  : Assets.assetsImagesIllustrationForgotPasswordWithEmail,
              height: 200.h, 
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
                  final ForgotPassRequest email = ForgotPassRequest(
                    email: emailController.text,
                  );
                  context.read<AuthCubit>().sendForgotPasswordEmail(email);
                }
              },
            ),
          ],
        );
      },
    );
  }
}
