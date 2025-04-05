import 'package:flutter/material.dart';
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
    fontSize: 12,
    color: AppColors.hintTextColor,
  );
  static final TextStyle regular16 = regular.copyWith(
    fontSize: 16,
    color: AppColors.hintTextColor,
  );
  static final TextStyle semiBold14 = semiBold.copyWith(
    fontSize: 14,
    color: AppColors.primaryColor,
  );
  static final TextStyle semiBold16 = semiBold.copyWith(
    fontSize: 16,
    color: AppColors.primaryColor,
  );
  static final TextStyle semiBold20 = semiBold.copyWith(
    fontSize: 20,
    color: AppColors.secondaryColor,
  );
  static final TextStyle medium12 = medium.copyWith(
    fontSize: 12,
    color: AppColors.primaryColor,
  );
  static final TextStyle medium14 = medium.copyWith(
    fontSize: 14,
    color: AppColors.secondaryColor,
  );
  static final TextStyle medium16 = medium.copyWith(
    fontSize: 16,
    color: Color(0xff51526C),
  );
  static final TextStyle medium18 = medium.copyWith(
    fontSize: 18,
    color: Colors.white,
  );
  static final TextStyle medium20 = medium.copyWith(
    fontSize: 20,
    color: AppColors.secondaryColor,
  );
  static final TextStyle medium24 = semiBold.copyWith(
    fontSize: 24,
    color: Colors.black,
  );
}
