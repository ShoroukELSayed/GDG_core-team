import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final bool isLoading;
  const CustomButton({
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    super.key,
    this.isLoading = false,
    required this.width,
    required this.height,
  });

  const CustomButton.primary({
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    double width = double.infinity,
    Key? key,
  }) : this(
          text: text,
          width: width,
          height: 48,
          backgroundColor: AppColors.primaryColor,
          onPressed: onPressed,
          isLoading: isLoading,
          key: key,
        );
  const CustomButton.secondary({
    required String text,
    required VoidCallback onPressed,
    required double width,
    Key? key,
  }) : this(
            text: text,
            width: width,
            height: 34,
            backgroundColor: Colors.white,
            onPressed: onPressed,
            key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: AppColors.outlinedColor),
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? const CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            )
          : Text(text,
              style: backgroundColor == Colors.white
                  ? AppStyles.medium18.copyWith(color: AppColors.primaryColor)
                  : AppStyles.medium18),
    );
  }
}
