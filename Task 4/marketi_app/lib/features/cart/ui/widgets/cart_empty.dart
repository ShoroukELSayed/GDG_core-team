import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Gap(30),
            Image.asset(Assets.assetsImagesIllustrationCartEmpty),
            const Gap(22),
            Text(
              'Your Cart is Empty',
              style: AppStyles.medium24,
            ),
            const Gap(30),
            Text(
              'Check our big offers, fresh products \n and fill your cart with items',
              textAlign: TextAlign.center,
              style: AppStyles.medium16,
            ),
            const Gap(30),
            CustomButton.primary(
              text: 'Start Shopping',
              onPressed: () {
                context.go(Routes.navigation);
              },
            )
          ],
        ),
      ),
    );
  }
}
