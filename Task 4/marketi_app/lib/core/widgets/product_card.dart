import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/widgets/product_image.dart';
import 'package:marketi_app/core/widgets/product_info.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: product.addToCart ? 0.25.sh : 0.21.sh,
      width: 0.4.sw,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xffB2CCFF).withValues(alpha: .5),
            blurRadius: 10.r,
          ),
        ],
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          ProductImage(imageUrl: product.productImage),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: ProductInfo(product: product),
          ),
        ],
      ),
    );
  }
}
