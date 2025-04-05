import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';


class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool? passwordVisible = false;
  final TextEditingController _userPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _userPasswordController,
      obscureText: !passwordVisible!,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColors.hintTextColor,
          fontStyle: AppStyles.regular12.fontStyle,
        ),
        prefixIcon: widget.prefixIcon,
        prefixIconColor: AppColors.secondaryColor,
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                icon: Icon(
                  passwordVisible!
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: passwordVisible!
                      ? AppColors.primaryColor
                      : AppColors.secondaryColor,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible!;
                  });
                })
            : null,
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
