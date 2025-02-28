import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    super.key,
  });

  const CustomButton.primary({
    required String text,
    required VoidCallback onPressed,
    Key? key,
  }) : this(
            text: text,
            backgroundColor: AppColors.primaryColor,
            onPressed: onPressed,
            key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
