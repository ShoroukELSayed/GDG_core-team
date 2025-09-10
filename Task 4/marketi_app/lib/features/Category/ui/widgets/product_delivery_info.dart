import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class ProductDeliveryInfo extends StatelessWidget {
  const ProductDeliveryInfo({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time,
          color: AppColors.primaryColor,
          size: 18.sp,
        ),
        Gap(4.h),
        Text(
          time,
          style: AppStyles.medium12.copyWith(color: AppColors.dartBlue700),
        )
      ],
    );
  }
}
