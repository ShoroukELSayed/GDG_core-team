import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key, required this.discount});

  final String discount;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 4.h,
      left: 4.w,
      child: Container(
        width: 0.2.sw,
        height: 0.03.sh,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.assetsImagesDiscount),
          ),
        ),
        child: Center(
          child: Text(
            '$discount% OFF',
            style: AppStyles.medium12,
          ),
        ),
      ),
    );
  }
}
