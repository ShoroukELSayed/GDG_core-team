import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/home/ui/screens/home_screen.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: IconButton.outlined(
        onPressed: () {
          Navigator.pushReplacementNamed(context, HomeScreen.id);
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          side: const BorderSide(
            color: AppColors.outlinedColor,
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
          child: Text(
            'Skip',
            style: AppStyles.semiBold16,
          ),
        ),
      ),
    );
  }
}
