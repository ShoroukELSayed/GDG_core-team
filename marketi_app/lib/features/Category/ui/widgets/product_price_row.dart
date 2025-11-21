import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';

class ProductPriceRow extends StatelessWidget {
  const ProductPriceRow({
    super.key,
    required this.price, required this.rating,
  });

  final String price;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: AppStyles.medium14,
        ),
        const Spacer(),
        const StarIconButton(),
        Text(
          rating,
          style: AppStyles.medium12.copyWith(color: AppColors.dartBlue900),
        ),
      ],
    );
  }
}
