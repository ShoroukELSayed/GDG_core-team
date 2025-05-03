import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';

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
            const CustomAppBar(title: ''),
            const Gap(44),
            Image.asset(Assets.assetsImagesIllustrationCongratulations),
            const Gap(22),
            Text(
              'Congratulations',
              style: AppStyles.medium24,
            ),
            const Gap(22),
            Text(
              'You have updated the password. please\n login again with your latest password',
              style: AppStyles.medium16,
            ),
            const Gap(22),
            CustomButton.primary(
              text: 'Log In',
              onPressed: () {
                context.go(Routes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
