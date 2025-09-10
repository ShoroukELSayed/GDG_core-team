import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class AppStyles {
  static const regular = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w400,
  );

  static const medium = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w500,
  );

  static const semiBold = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.w600,
  );

  static const bold = TextStyle(
    fontFamily: 'Tajawal',
    fontWeight: FontWeight.bold,
  );

  static final TextStyle regular12 = regular.copyWith(
    fontSize: 12.sp,
    color: AppColors.placeholder,
  );
  static final TextStyle regular16 = regular.copyWith(
    fontSize: 16.sp,
    color: AppColors.placeholder,
  );
  static final TextStyle semiBold14 = semiBold.copyWith(
    fontSize: 14.sp,
    color: AppColors.primaryColor,
  );
  static final TextStyle semiBold16 = semiBold.copyWith(
    fontSize: 16.sp,
    color: AppColors.primaryColor,
  );
  static final TextStyle semiBold18 = semiBold.copyWith(
    fontSize: 18.sp,
    color: AppColors.dartBlue900,
  );
  static final TextStyle semiBold20 = semiBold.copyWith(
    fontSize: 20.sp,
    color: AppColors.dartBlue900,
  );
  static final TextStyle medium12 = medium.copyWith(
    fontSize: 12.sp,
    color: AppColors.primaryColor,
  );
  static final TextStyle medium14 = medium.copyWith(
    fontSize: 14.sp,
    color: AppColors.dartBlue900,
  );
  static final TextStyle medium16 = medium.copyWith(
    fontSize: 16.sp,
    color: const Color(0xff51526C),
  );
  static final TextStyle medium18 = medium.copyWith(
    fontSize: 18.sp,
    color: Colors.white,
  );
  static final TextStyle medium20 = medium.copyWith(
    fontSize: 20.sp,
    color: AppColors.dartBlue900,
  );
  static final TextStyle medium24 = semiBold.copyWith(
    fontSize: 24.sp,
    color: Colors.black,
  );
}
