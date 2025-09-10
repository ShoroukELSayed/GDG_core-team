import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class RecentSearch extends StatelessWidget {
  const RecentSearch({
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
          style: AppStyles.medium16.copyWith(color: AppColors.dartBlue900),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.close, size: 25.sp),
        ),
      ],
    );
  }
}
