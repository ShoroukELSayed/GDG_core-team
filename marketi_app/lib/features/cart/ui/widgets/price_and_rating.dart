import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';
import 'package:marketi_app/features/cart/data/models/product_cart_item_model.dart';

class PriceAndRating extends StatelessWidget {
  const PriceAndRating({
    super.key,
    required this.productCartItemModel,
  });

  final ProductCartItemModel productCartItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          productCartItemModel.productPrice,
          style: AppStyles.medium14,
        ),
        const Spacer(),
        const StarIconButton(),
        Text(
          productCartItemModel.productRating,
          style: AppStyles.medium12.copyWith(color: AppColors.dartBlue900),
        ),
      ],
    );
  }
}
