import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/features/product_details/ui/widgets/price_and_cart_button.dart';
import 'package:marketi_app/features/product_details/ui/widgets/product_images_section.dart';
import 'package:marketi_app/features/product_details/ui/widgets/shipping_and_rating.dart';
import 'package:marketi_app/features/product_details/ui/widgets/size_section.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const CustomAppBar(
                    title: 'Product Details',
                    shoppingCart: true,
                  ),
                  ProductImagesSection(
                    thumbnail: product.thumbnail,
                    images: product.images,
                  ),
                  ShippingAndRating(
                    rating: product.rating,
                    shipping: product.shippingInformation,
                  ),
                  Text(
                    'Product Swaddlers',
                    style: AppStyles.medium18.copyWith(
                      color: AppColors.dartBlue900,
                    ),
                  ),
                  Text(
                    'Product Value',
                    style: AppStyles.regular16.copyWith(
                      color: AppColors.dartBlue900,
                    ),
                  ),
                  Text(
                    product.description,
                    style: AppStyles.regular12.copyWith(
                      color: AppColors.dartBlue900,
                    ),
                  ),
                  Gap(20.h),
                  const SizeSection(),
                ],
              ),
            ),
            PriceAndCartButton(
              price: product.price.toString(),
              productId: product.id,
            ),
            Gap(50.h),
          ],
        ),
      ),
    );
  }
}
