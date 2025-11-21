import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    super.key,
    required this.itemName,
    required this.price,
  });
  final String itemName;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          itemName,
          style: AppStyles.medium14.copyWith(
            color: itemName == 'Total' ? AppColors.dartBlue900 : AppColors.navy,
          ),
        ),
        const Spacer(),
        Text(
          price,
          style: AppStyles.medium14.copyWith(
            color: itemName == 'Total' ? AppColors.dartBlue900 : AppColors.navy,
          ),
        ),
      ],
    );
  }
}
