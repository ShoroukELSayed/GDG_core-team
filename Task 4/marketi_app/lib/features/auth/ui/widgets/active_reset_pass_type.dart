import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/features/auth/data/models/active_reset_pass_models.dart';
import 'package:marketi_app/features/auth/data/models/forgot_pass_models.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/custom_pin_code_text_field.dart';
import 'package:marketi_app/features/auth/data/logic/auth_cubit/auth_cubit.dart';

class ActiveResetPassType extends StatefulWidget {
  const ActiveResetPassType({
    super.key,
    required this.verificationType,
    required this.email,
  });

  final String verificationType;
  final String email;

  @override
  State<ActiveResetPassType> createState() => _ActiveResetPassTypeState();
}

class _ActiveResetPassTypeState extends State<ActiveResetPassType> {
  String verificationCode = '';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ForgotPassSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text(state.response.message)));
        } else if (state is ForgotPassError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage)),
          );
        }
      },
      builder: (context, state) {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is ActiveResetPassSuccess) {  
              context.push(Routes.createNewPassword, extra: widget.email);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(state.response.message)),
              );
            } else if (state is ActiveResetPassError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errMessage)),
              );
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                Image.asset(
                  widget.verificationType == 'phone'
                      ? Assets.assetsImagesIllustrationVerificationCodeWithPhone
                      : Assets.assetsImagesIllustrationVerificationCodeWithEmail,
                  height: 200.h, 
                ),
                Gap(22.h),
                Text(
                  'Please enter the 4 digit code\n sent to: ${widget.verificationType == 'phone' ? '+20 1501142409' : widget.email} ',
                  style: AppStyles.medium16,
                  textAlign: TextAlign.center,
                ),
                Gap(22.h),
                CustomPinCodeTextField(
                  onChanged: (value) {
                    verificationCode = value;
                  },
                ),
                Gap(22.h),
                CustomButton.primary(
                    text: 'Verify Code',
                    onPressed: () {
                      if (widget.verificationType == 'email') {
                        context
                            .read<AuthCubit>()
                            .verifyCode(ActiveResetPassRequest(email: widget.email, code: verificationCode));
                      }
                    }),
                Gap(22.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '00:46',
                    style: AppStyles.semiBold16
                        .copyWith(color: const Color(0xff51526C)),
                  ),
                ),
                Gap(22.h),
                TextButton(
                  onPressed: () {
                    context
                        .read<AuthCubit>()
                        .sendForgotPasswordEmail(ForgotPassRequest(email: widget.email));
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
