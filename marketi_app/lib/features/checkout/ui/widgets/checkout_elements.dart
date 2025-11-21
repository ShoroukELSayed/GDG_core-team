import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class CheckoutElements extends StatelessWidget {
  const CheckoutElements({
    super.key,
    required this.icon,
    required this.text,
    this.isChange = false,
  });
  final Widget icon;
  final String text;
  final bool isChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: AppColors.rect)),
      child: Row(
        children: [
          icon,
          Gap(14.h),
          Text(
            text,
            style: AppStyles.medium14.copyWith(
              color: AppColors.dartBlue900,
            ),
          ),
          const Spacer(),
          if (isChange)
            TextButton(
              onPressed: () {},
              child: Text(
                'Change',
                style: AppStyles.medium14.copyWith(
                  color: AppColors.lightBlue100,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
