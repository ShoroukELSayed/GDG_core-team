import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class UserInfoItem extends StatefulWidget {
   UserInfoItem({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText =false,
    required this.controller,
    required this.validator,
  });

  final String label;
  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  bool? obscureText ;
  final TextEditingController controller;
  final String? Function(String?) validator;

  @override
  State<UserInfoItem> createState() => _UserInfoItemState();
}

class _UserInfoItemState extends State<UserInfoItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppStyles.medium12.copyWith(color: Colors.black),
        ),
        CustomTextFormField(
          obscureText: widget.obscureText!,
          controller: widget.controller,
          validator: widget.validator,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
        ),
      ],
    );
  }
}
