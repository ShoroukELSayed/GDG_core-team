import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/features/cart/data/models/product_cart_item_model.dart';
import 'package:marketi_app/features/cart/ui/widgets/product_details.dart';

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
      height: 210.h,
      margin: EdgeInsets.only(left: 4.w, right: 4.w, bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xffB2CCFF).withValues(alpha: .5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Row(
          children: [
            CachedNetworkImage(
             imageUrl:  widget.productCartItemModel.productImage,
              width: 120.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
            Gap(8.w),
            ProductDetails(productCartItemModel: widget.productCartItemModel),
          ],
        ),
      ),
    );
  }
}
