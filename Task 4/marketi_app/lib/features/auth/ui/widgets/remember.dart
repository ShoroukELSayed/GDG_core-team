import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class Remember extends StatelessWidget {
  const Remember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          activeColor: AppColors.primaryColor,
          onChanged: (value) {},
        ),
        Text(
          'Remember Me',
          style: AppStyles.regular12,
        ),
        const Spacer(),
        TextButton(
            onPressed: () {
              context.push(Routes.forgotPassword);
            },
            child: Text('Forgot Password?', style: AppStyles.medium12))
      ],
    );
  }
}
