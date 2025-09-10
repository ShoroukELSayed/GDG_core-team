import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/models/brand_model.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class BrandsItem extends StatelessWidget {
  const BrandsItem({
    super.key,
    required this.brand,
    this.isHome = true, this.onTap,
  });

  final BrandModel brand;
  final bool isHome;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 100.h,
            width: 105.w,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color(0xFFB2CCFF),
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Text(
                brand.emoji,
                style: TextStyle(fontSize: 60.sp),
              ),
            ),
          ),
          isHome
              ? const SizedBox.shrink()
              : Text(
                  brand.name,
                  style: AppStyles.medium16.copyWith(
                    color: AppColors.dartBlue900,
                  ),
                ),
        ],
      ),
    );
  }
}
