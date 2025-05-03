import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class SocialMediaIconsItem extends StatelessWidget {
  const SocialMediaIconsItem({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      style: IconButton.styleFrom(
        shape: const CircleBorder(
          side: BorderSide(
            color: AppColors.outlinedColor,
          ),
        ),
      ),
    );
  }
}
