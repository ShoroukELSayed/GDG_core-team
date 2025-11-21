import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/add_to_cart.dart';
import 'package:marketi_app/core/widgets/price_and_rating.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.product});

  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PriceAndRating(
            price: product.productPrice, rating: product.productRating),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            product.productName,
            maxLines: 1,
            style: AppStyles.medium12.copyWith(color: Colors.black),
          ),
        ),
        Gap(5.h),
        if (product.addToCart) AddToCart(productId: product.productId),
      ],
    );
  }
}
