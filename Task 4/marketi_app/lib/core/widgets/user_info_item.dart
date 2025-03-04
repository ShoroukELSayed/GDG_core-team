import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_text_form_field.dart';

class UserInfoItem extends StatelessWidget {
  const UserInfoItem({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  final String label;
  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.medium12.copyWith(color: Colors.black),
        ),
        CustomTextFormField(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
