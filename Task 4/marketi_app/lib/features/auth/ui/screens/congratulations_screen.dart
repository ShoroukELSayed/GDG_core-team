import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  static const String id = 'Congratulations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: 44.h,
        ),
        child: Column(
          children: [
            const CustomAppBar(title: ''),
            Gap(44.h),
            Image.asset(
              Assets.assetsImagesIllustrationCongratulations,
              height: 200.h,
            ),
            Gap(22.h),
            Text(
              'Congratulations',
              style: AppStyles.medium24,
            ),
            Gap(22.h),
            Text(
              'You have updated the password. please\n login again with your latest password',
              style: AppStyles.medium16,
              textAlign: TextAlign.center,
            ),
            Gap(22.h),
            CustomButton.primary(
              text: 'Log In',
              onPressed: () {
                context.go(Routes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
