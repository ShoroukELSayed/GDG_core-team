import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';
import 'package:marketi_app/features/cart/data/models/product_cart_item_model.dart';
import 'package:marketi_app/features/cart/ui/widgets/item_counter.dart';

class ProductCartItem extends StatefulWidget {
  const ProductCartItem({
    super.key,
    required this.productCartItemModel,
  });

  final ProductCartItemModel productCartItemModel;
  @override
  State<ProductCartItem> createState() => _ProductCartItemState();
}

class _ProductCartItemState extends State<ProductCartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 155,
      margin: const EdgeInsets.only(left: 4, right: 4, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xffB2CCFF).withValues(alpha: .5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              widget.productCartItemModel.productImage,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            const Gap(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.productCartItemModel.productName,
                        style: AppStyles.medium14,
                      ),
                      const Spacer(),
                      const FavoriteIconButton(),
                    ],
                  ),
                  Text(
                    widget.productCartItemModel.productDescription,
                    style: AppStyles.medium12
                        .copyWith(color: AppColors.hintTextColor),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.productCartItemModel.productPrice,
                        style: AppStyles.medium14,
                      ),
                      const Spacer(),
                      const StarIconButton(),
                      Text(
                        '4.5',
                        style: AppStyles.medium12
                            .copyWith(color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                  const ItemCounter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
