import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';
import 'package:marketi_app/features/cart/ui/widgets/item_counter.dart';

class ProductCartItem extends StatefulWidget {
  const ProductCartItem({super.key, required this.productName, required this.productPrice, required this.productImage, required this.productDescription});

  final String productName;
  final String productPrice;
  final String productImage;
  final String productDescription;

  @override
  State<ProductCartItem> createState() => _ProductCartItemState();
}

class _ProductCartItemState extends State<ProductCartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 155,
      margin: const EdgeInsets.only(left: 4, right: 4,bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xffB2CCFF).withOpacity(0.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              widget.productImage,
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
                        widget.productName,
                        style: AppStyles.medium14,
                      ),
                      const Spacer(),
                      FavoriteIconButton(),
                    ],
                  ),
                  Text(
                    widget.productDescription,
                    style: AppStyles.medium12
                        .copyWith(color: AppColors.hintTextColor),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.productPrice,
                        style: AppStyles.medium14,
                      ),
                      const Spacer(),
                      StarIconButton(),
                      Text(
                        '4.5',
                        style: AppStyles.medium12
                            .copyWith(color: AppColors.secondaryColor),
                      ),
                    ],
                  ),
                  ItemCounter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
