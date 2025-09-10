import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key, required this.count});
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 36.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColors.primaryColor.withValues(alpha: 0.1),
      ),
      child: Center(
        child: Text(
          count.toString(),
          style: AppStyles.semiBold14,
        ),
      ),
    );
  }
}
