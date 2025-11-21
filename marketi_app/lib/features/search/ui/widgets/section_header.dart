import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: AppStyles.semiBold16.copyWith(color: AppColors.dartBlue900),
        ),
        const Spacer(),
        IconButton(
          icon: Icon(Icons.keyboard_arrow_down, size: 25.sp),
          onPressed: () {},
        ),
      ],
    );
  }
}
