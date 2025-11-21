import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/widgets/discount_banner.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';
import 'package:marketi_app/core/widgets/product_card.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productItemModel,
  });

  final ProductItemModel productItemModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.47.sw,
      child: Center(
        child: Stack(
          children: [
            ProductCard(product: productItemModel),
            if (productItemModel.productDiscount != '0%')
              DiscountBanner(discount: productItemModel.productDiscount),
            Positioned(
              top: 5.h,
              right: 5.w,
              child: FavoriteIconButton(productId: productItemModel.productId),
            ),
          ],
        ),
      ),
    );
  }
}
