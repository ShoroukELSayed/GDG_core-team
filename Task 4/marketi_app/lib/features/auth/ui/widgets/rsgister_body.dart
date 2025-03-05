import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/features/auth/ui/widgets/Register_app_bar.dart';
import 'package:marketi_app/features/auth/ui/widgets/social_media_icons.dart';
import 'package:marketi_app/features/auth/ui/widgets/user_info.dart';
import 'package:marketi_app/features/home/ui/screens/home_screen.dart';

class RsgisterBody extends StatelessWidget {
  const RsgisterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          RegisterAppBar(),
          UserInfo(),
          Gap(14),
          CustomButton.primary(
              text: 'Sign Up',
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.id);
              }),
          Gap(12),
          Text(
            'Or Continue With',
            textAlign: TextAlign.center,
            style: AppStyles.regular12,
          ),
          Gap(18),
          SocialMediaIcons(),
        ],
      ),
    );
  }
}
