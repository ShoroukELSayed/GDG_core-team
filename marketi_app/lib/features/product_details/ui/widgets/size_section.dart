import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/product_details/ui/widgets/size_options.dart';

class SizeSection extends StatelessWidget {
  const SizeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Size',
          style: AppStyles.regular16.copyWith(
            color: AppColors.dartBlue900,
          ),
        ),
        const SizeOptions(),
      ],
    );
  }
}
