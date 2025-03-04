import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon});

  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.hintTextColor,
          fontStyle: AppStyles.regular12.fontStyle,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
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
