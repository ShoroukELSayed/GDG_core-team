import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class NotificationsIcon extends StatelessWidget {
  const NotificationsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Icons.notifications_none_outlined,
          color: AppColors.primaryColor,
          size: 30.sp, 
        ),
        Positioned(
          top: 4.h,
          right: 4.w,
          child: Container(
            height: 10.h,
            width: 10.w,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
