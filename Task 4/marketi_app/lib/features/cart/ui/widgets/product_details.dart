import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';
import 'package:marketi_app/core/widgets/item_counter.dart';
import 'package:marketi_app/features/cart/data/models/product_cart_item_model.dart';
import 'package:marketi_app/features/cart/ui/widgets/price_and_rating.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.productCartItemModel,
  });

  final ProductCartItemModel productCartItemModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: Text(
                  softWrap: true,
                  productCartItemModel.productName,
                  style: AppStyles.medium14,
                ),
              ),
              const Spacer(),
              FavoriteIconButton(
                productId: productCartItemModel.productId,
              ),
            ],
          ),
          Text(
            productCartItemModel.productDescription,
            maxLines: 2,
            style: AppStyles.medium12.copyWith(color: AppColors.placeholder),
          ),
          PriceAndRating(productCartItemModel: productCartItemModel),
          ItemCounter(
            productId: productCartItemModel.productId,
          ),
        ],
      ),
    );
  }
}
