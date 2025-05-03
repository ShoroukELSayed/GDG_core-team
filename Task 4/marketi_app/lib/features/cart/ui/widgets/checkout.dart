import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';

class Checkout extends StatelessWidget {
  const Checkout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xffB2CCFF).withValues(alpha: 0.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suptotal (3 items)',
                  style: AppStyles.semiBold14
                      .copyWith(color: AppColors.secondaryColor),
                ),
                Text(
                  'EGP 1,120,00',
                  style: AppStyles.semiBold14
                      .copyWith(color: AppColors.secondaryColor),
                ),
              ],
            ),
            const Gap(14),
            CustomButton.primary(text: 'Checkout', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
