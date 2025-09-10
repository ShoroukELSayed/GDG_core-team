import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/widgets/shopping_cart_counter.dart';

class ShoppingCartIcon extends StatelessWidget {
  final int itemCount;
  final double iconSize;
  final Color iconColor;
  final Color badgeColor;

  const ShoppingCartIcon({
    super.key,
    this.itemCount = 0,
    this.iconSize = 30,
    this.iconColor = AppColors.primaryColor,
    this.badgeColor = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(
          Icons.shopping_cart_outlined,
          color: iconColor,
          size: iconSize.sp,
        ),
        if (itemCount > 0)
          Positioned(
            top: -8.h,
            right: -2.w,
            child: ShoppingCartCounter(
              count: itemCount,
              color: badgeColor,
            ),
          ),
      ],
    );
  }
}
