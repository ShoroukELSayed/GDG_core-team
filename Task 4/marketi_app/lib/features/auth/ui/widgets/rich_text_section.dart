import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class RichTextSection extends StatelessWidget {
  const RichTextSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Are you new in Marketi ',
        style: AppStyles.regular12,
        children: [
          TextSpan(
            text: 'register?',
            style: AppStyles.regular12.copyWith(
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.push(Routes.register);
              },
          ),
        ],
      ),
    );
  }
}
