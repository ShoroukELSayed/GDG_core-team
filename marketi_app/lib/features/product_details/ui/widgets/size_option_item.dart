import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class SizeOptionItem extends StatelessWidget {
  const SizeOptionItem({
    super.key,
    required this.size,
    required this.isSelected,
    required this.onTap,
  });

  final String size;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.5.w,
          vertical: isSelected ? 2.5.h : 7.5.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: AppColors.primaryColor),
        ),
        child: Column(
          children: [
            Text(
              size,
              style: isSelected
                  ? AppStyles.medium24
                  : AppStyles.medium24.copyWith(color: Colors.grey),
            ),
            isSelected
                ? const Icon(
                    Icons.check_circle,
                    color: AppColors.primaryColor,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
