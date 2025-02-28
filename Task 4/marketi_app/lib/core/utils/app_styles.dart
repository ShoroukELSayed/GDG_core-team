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

  static final TextStyle semibold20 = semiBold.copyWith(
    fontSize: 20,
    color: AppColors.secondaryColor,
  );
  static final TextStyle medium14 = semiBold.copyWith(
    fontSize: 14,
    color: AppColors.secondaryColor,
  );
}
