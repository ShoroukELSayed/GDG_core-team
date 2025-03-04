import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/custom_text_form_field.dart';
import 'package:marketi_app/features/auth/ui/widgets/remember.dart';
import 'package:marketi_app/features/auth/ui/widgets/rich_text_section.dart';
import 'package:marketi_app/features/auth/ui/widgets/social_media_icons.dart';
import 'package:marketi_app/features/home/ui/screens/home_screen.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          Image.asset(Assets.assetsImagesLogoSplashScreen),
          CustomTextFormField(
            hintText: 'Username or Email',
            prefixIcon: Icon(Icons.email_outlined),
          ),
          Gap(14),
          CustomTextFormField(
            hintText: 'Enter Your Password',
            prefixIcon: Icon(Icons.lock_outline_rounded),
            suffixIcon: Icon(Icons.visibility_off),
          ),
          Gap(6),
          Remember(),
          Gap(21),
          CustomButton.primary(text: 'Log In', onPressed: () {
            Navigator.pushReplacementNamed(context, HomeScreen.id);
          }),
          Gap(14),
          Text('Or Continue With',textAlign: TextAlign.center, style: AppStyles.regular12),
          Gap(16),
          SocialMediaIcons(),
          Gap(14),
          RichTextSection(),
        ],
      ),
    );
  }
}
