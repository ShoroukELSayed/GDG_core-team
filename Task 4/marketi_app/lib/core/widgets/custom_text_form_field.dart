import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, required this.prefixIcon, this.suffixIcon});

  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.hintTextColor,
          fontStyle: AppStyles.regular12.fontStyle,
        ),
        prefixIcon: Icon(
          prefixIcon
        ),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        enabledBorder: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
        border: _outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder({Color? color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: color ?? AppColors.outlinedColor.withValues(alpha: 0.70),
        ),
      );
}
