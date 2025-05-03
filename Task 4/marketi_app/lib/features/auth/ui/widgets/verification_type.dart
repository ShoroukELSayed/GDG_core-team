import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/custom_pin_code_text_field.dart';
import 'package:marketi_app/features/auth/logic/forgot_pass_cubit/forgot_pass_cubit.dart';
import 'package:marketi_app/features/auth/logic/forgot_pass_cubit/forgot_pass_states.dart';
import 'package:marketi_app/features/auth/logic/verify_code_cubit/verify_code_cubit.dart';
import 'package:marketi_app/features/auth/logic/verify_code_cubit/verify_code_states.dart';

class VerificationType extends StatefulWidget {
  const VerificationType({
    super.key,
    required this.verificationType,
    required this.email,
  });

  final String verificationType;
  final String email;

  @override
  State<VerificationType> createState() => _VerificationTypeState();
}

class _VerificationTypeState extends State<VerificationType> {
  String verificationCode = '';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPassCubit, ForgotPassStates>(
      listener: (context, state) {
        if (state is ForgotPassSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Verification code resent')),
          );
        } else if (state is ForgotPassError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('On Snap!')),
          );
        }
      },
      builder: (context, state) {
        return BlocConsumer<VerifyCodeCubit, VerifyCodeStates>(
          listener: (context, state) {
            if (state is VerifyCodeStatesSuccess) {
              context.push(Routes.createNewPassword, extra: widget.email);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('You can now create a new password')),
              );
            } else if (state is VerifyCodeStatesError) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('On Snap!')),
              );
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                Image.asset(widget.verificationType == 'phone'
                    ? Assets.assetsImagesIllustrationVerificationCodeWithPhone
                    : Assets.assetsImagesIllustrationVerificationCodeWithEmail),
                const Gap(22),
                Text(
                  'Please enter the 4 digit code\n sent to: ${widget.verificationType == 'phone' ? '+20 1501142409' : widget.email} ',
                  style: AppStyles.medium16,
                  textAlign: TextAlign.center,
                ),
                const Gap(22),
                CustomPinCodeTextField(
                  onChanged: (value) {
                    verificationCode = value;
                  },
                ),
                const Gap(22),
                CustomButton.primary(
                    text: 'Verify Code',
                    onPressed: () {
                      if (widget.verificationType == 'email') {
                        context
                            .read<VerifyCodeCubit>()
                            .verifyCode(widget.email, verificationCode);
                      }
                    }),
                const Gap(22),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '00:46',
                    style: AppStyles.semiBold16
                        .copyWith(color: const Color(0xff51526C)),
                  ),
                ),
                const Gap(22),
                TextButton(
                  onPressed: () {
                    context
                        .read<ForgotPassCubit>()
                        .sendForgotPasswordEmail(widget.email);
                  },
                  child: Text(
                    'Resend Code',
                    style: AppStyles.semiBold16
                        .copyWith(color: const Color(0xff51526C)),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
