import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.name, this.onPressed, 
  });

  final String name;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: AppStyles.semiBold20,
        ),
        const Spacer(),
        TextButton(
          onPressed:onPressed,
          child: Text(
            'View all',
            style: AppStyles.medium16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
