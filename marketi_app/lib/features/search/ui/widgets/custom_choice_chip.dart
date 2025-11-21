import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        name,
        style: AppStyles.medium16.copyWith(color: AppColors.lightBlue200),
      ),
      selected: false,
      backgroundColor: AppColors.lightBlue900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.r)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      side: const BorderSide(
        color: AppColors.lightBlue900,
      ),
      onSelected: (selected) {},
    );
  }
}
