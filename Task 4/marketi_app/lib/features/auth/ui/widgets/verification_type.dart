import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/custom_pin_code_text_field.dart';

class VerificationType extends StatefulWidget {
  const VerificationType({
    super.key,
    required this.verificationType,
  });

  final String verificationType;

  @override
  State<VerificationType> createState() => _VerificationTypeState();
}

class _VerificationTypeState extends State<VerificationType> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.verificationType == 'phone'
            ? Assets.assetsImagesIllustrationVerificationCodeWithPhone
            : Assets.assetsImagesIllustrationVerificationCodeWithEmail),
        Gap(22),
        Text(
          'Please enter the 4 digit code\n sent to: ${widget.verificationType == 'phone' ? '+20 1501142409' : 'You@gmail.com'} ',
          style: AppStyles.medium16,
          textAlign: TextAlign.center,
        ),
        Gap(22),
        CustomPinCodeTextField(),
        Gap(22),
        CustomButton.primary(
            text: 'Verify Code',
            onPressed: () {
              context.push(Routes.createNewPassword);
            }),
        Gap(22),
        Align(
          alignment: Alignment.center,
          child: Text(
            '00:46',
            style: AppStyles.semiBold16.copyWith(color: Color(0xff51526C)),
          ),
        ),
        Gap(22),
        TextButton(
          onPressed: () {},
          child: Text(
            'Resend Code',
            style: AppStyles.semiBold16.copyWith(color: Color(0xff51526C)),
          ),
        ),
      ],
    );
  }
}
