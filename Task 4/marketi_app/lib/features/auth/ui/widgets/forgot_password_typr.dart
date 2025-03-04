import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/user_info_item.dart';
import 'package:marketi_app/features/auth/ui/screens/verification_code_screen.dart';

class ForgotPasswordType extends StatelessWidget {
  const ForgotPasswordType({
    super.key, required this.isPhone,
  });

  final bool isPhone ;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 22,
      children: [
        Image.asset(isPhone ? Assets.assetsImagesIllustrationForgotPasswordWithPhone : Assets.assetsImagesIllustrationForgotPasswordWithEmail,height: 256,),
        Text(
          'Please enter your ${ isPhone ? 'phone number' : 'email address'} to\n receive a verification code',
          style: AppStyles.medium16,
          textAlign: TextAlign.center,
        ),
        UserInfoItem(
          label: isPhone ? 'Phone Number':'Email',
          hintText: isPhone? '+20 1501142409 ':'You@gmail.com',
          prefixIcon: Icon(Icons.phone_iphone_sharp),
        ),
        CustomButton.primary(
            text: 'Send Code',
            onPressed: () {
              Navigator.pushNamed(context, VerificationCodeScreen.id,
                  arguments: {'verificationType': isPhone ? 'phone' : 'email'});
            }),
      ],
    );
  }
}
