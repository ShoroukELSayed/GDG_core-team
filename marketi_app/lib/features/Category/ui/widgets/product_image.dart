import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/routing/routes.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.width,
    required this.height,
    required this.product,
  });

  final double width;
  final double height;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(
        Routes.productDetails,
        extra: product,
      ),
      child: CachedNetworkImage(
        imageUrl: product.thumbnail,
        width: width.w,
        height: height.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
