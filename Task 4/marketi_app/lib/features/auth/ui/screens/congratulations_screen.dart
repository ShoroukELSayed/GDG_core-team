import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/features/auth/ui/screens/login_screen.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  static const String id = 'Congratulations';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 44),
        child: Column(
          children: [
            CustomAppBar(title: ''),
            Gap(44),
            Image.asset(Assets.assetsImagesIllustrationCongratulations),
            Gap(22),
            Text(
              'Congratulations',
              style: AppStyles.medium24,
            ),
            Gap(22),
            Text(
              'You have updated the password. please\n login again with your latest password',
              style: AppStyles.medium16,
            ),
            Gap(22),
            CustomButton.primary(
              text: 'Log In',
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
