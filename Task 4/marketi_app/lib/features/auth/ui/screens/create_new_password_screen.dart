import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/user_info_item.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  static const String id = 'CreateNewPassword';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            CustomAppBar(
              title: 'Create New Password',
            ),
            Gap(57),
            Image.asset(Assets.assetsImagesIllustrationCreateNewPassword),
            Gap(22),
            Text(
              'New password must be\n different from last password',
              textAlign: TextAlign.center,
              style: AppStyles.medium16,
            ),
            Gap(22),
            UserInfoItem(
              label: 'Password',
              hintText: 'Enter Your Password',
              prefixIcon: Icon(Icons.lock_outline),
              suffixIcon: Icon(Icons.visibility_off),
            ),
            UserInfoItem(
              label: 'Confirm Password',
              hintText: 'confirm Your Password',
              prefixIcon: Icon(Icons.lock_outline),
              suffixIcon: Icon(Icons.visibility_off),
            ),
            Gap(22),
            CustomButton.primary(
                text: 'Save Password',
                onPressed: () {
                  context.push(Routes.congratulations);
                }),
          ],
        ),
      ),
    );
  }
}
