import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return OutlinedButton(
      onPressed: () {
        context.pop();
      },
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        side: const BorderSide(
          color: AppColors.rect,
        ),
        fixedSize: Size(48.w, 48.h),
      ),
      child: Image.asset(Assets.assetsImagesBackIcon),
    );
  }
}
