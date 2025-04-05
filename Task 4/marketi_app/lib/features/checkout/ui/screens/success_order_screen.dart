import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_body_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';

class SuccessOrderScreen extends StatelessWidget {
  const SuccessOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Column(
          children: [
            CustomBodyAppBar(
              title: 'Checkout',
            ),
            Gap(44),
            Image.asset(Assets.assetsImagesIllustrationSuccessOrder),
            Gap(22),
            Text(
              'Thank You!',
              style: AppStyles.medium24,
            ),
            Gap(30),
            Text(
              'Woah, You Have sucessfully orderd',
              style: AppStyles.medium16,
            ),
            Gap(30),
            CustomButton.primary(
              text: 'Go Home',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
