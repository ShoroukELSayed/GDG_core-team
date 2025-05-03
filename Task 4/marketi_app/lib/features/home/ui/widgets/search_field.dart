import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'What are you looking for ? ',
        hintStyle: AppStyles.regular16,
        enabledBorder: _outlineInputBorder(),
        focusedBorder: _outlineInputBorder(),
        border: _outlineInputBorder(),
        prefixIcon: const Icon(
          Icons.search,
          size: 40,
          color: AppColors.secondaryColor,
        ),
        suffixIcon: Image.asset(Assets.assetsImagesFilterIcon),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder({Color? color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(
          color: color ?? AppColors.outlinedColor,
        ),
      );
}
