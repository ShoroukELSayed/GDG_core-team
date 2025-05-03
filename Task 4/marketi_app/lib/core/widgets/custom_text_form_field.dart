import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
   CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.controller, required this.validator, this.obscureText = false, 
  });

  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?) validator;
  bool? obscureText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText!,
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
                  widget.obscureText! ? Icons.visibility_off : Icons.visibility,
                  color: widget.obscureText!
                      ? AppColors.secondaryColor
                      : AppColors.primaryColor,
                ),
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText!;
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
