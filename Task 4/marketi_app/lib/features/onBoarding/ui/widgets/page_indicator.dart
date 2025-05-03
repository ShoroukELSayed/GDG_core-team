import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
      effect: const WormEffect(
        spacing: 8.0,
        radius: 10.0,
        dotWidth: 20.0,
        dotHeight: 20.0,
        strokeWidth: 1.5,
        dotColor: Color.fromARGB(120, 158, 158, 158),
        activeDotColor: AppColors.secondaryColor,
      ),
    );
  }
}
