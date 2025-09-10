import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class ShippingAndRating extends StatelessWidget {
  const ShippingAndRating({
    super.key, required this.shipping, required this.rating,
  });
  final String shipping;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 3.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child:  Text(shipping),
        ),
        const Spacer(),
        RatingBarIndicator(
          rating: rating,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: AppColors.dartBlue900,
          ),
          itemCount: 5,
          itemSize: 20.sp,
          direction: Axis.horizontal,
        ),
        Text(
          rating.toString(),
          style: AppStyles.medium14,
        ),
      ],
    );
  }
}
