import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends HookWidget {
  const PageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: WormEffect(
        spacing: 8.0.w,
        radius: 10.0.r,
        dotWidth: 20.0.w,
        dotHeight: 20.0.h,
        strokeWidth: 1.5.w,
        dotColor: const Color.fromARGB(120, 158, 158, 158),
        activeDotColor: AppColors.dartBlue900,
      ),
    );
  }
}
