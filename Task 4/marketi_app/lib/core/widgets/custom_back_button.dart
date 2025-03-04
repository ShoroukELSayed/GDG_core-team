import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => Navigator.pop(context),
      style: OutlinedButton.styleFrom(
        shape: CircleBorder(),
        side: const BorderSide(
          color: AppColors.outlinedColor,
        ),
        fixedSize: const Size(48, 48),
      ),
      child: Image.asset(Assets.assetsImagesBackIcon),
    );
  }
}
