import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/auth/ui/screens/forgot_password_screen.dart';

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
        Spacer(),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ForgotPasswordScreen.id);
            },
            child:
                Text('Forgot Password?', style: AppStyles.medium12))
      ],
    );
  }
}
