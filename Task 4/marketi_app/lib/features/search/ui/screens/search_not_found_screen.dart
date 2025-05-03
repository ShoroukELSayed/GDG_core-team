import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_body_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/features/home/ui/widgets/search_field.dart';

class SearchNotFoundScreen extends StatelessWidget {
  const SearchNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Column(
          children: [
            const CustomBodyAppBar(title: ''),
            const Gap(14),
            const SearchField(),
            const Gap(30),
            Image.asset(Assets.assetsImagesIllustrationSearchNotFound),
            const Gap(22),
            Text(
              'Oops Not Found!',
              style: AppStyles.medium24,
            ),
            const Gap(30),
            Text(
              'Check our big offers, fresh products \n and fill your cart with items',
              textAlign: TextAlign.center,
              style: AppStyles.medium16,
            ),
            const Gap(30),
            CustomButton.primary(text: 'Continue Shopping', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
