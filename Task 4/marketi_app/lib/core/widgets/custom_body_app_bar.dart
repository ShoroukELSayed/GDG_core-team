import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_back_button.dart';
import 'package:marketi_app/core/widgets/profile_photo.dart';

class CustomBodyAppBar extends StatelessWidget {
  const CustomBodyAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBackButton(),
        const Spacer(),
        Text(
          title,
          style: AppStyles.semiBold20,
        ),
        const Spacer(),
        const ProfilePhoto(),
      ],
    );
  }
}
