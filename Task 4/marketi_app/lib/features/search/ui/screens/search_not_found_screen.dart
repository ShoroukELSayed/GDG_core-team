import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/search_item.dart';

class SearchNotFoundScreen extends StatelessWidget {
  const SearchNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
        child: Column(
          children: [
            const CustomAppBar(title: '', profilePhoto: true),
            Gap(14.h),
            const SearchItem(),
            Gap(30.h),
            Image.asset(Assets.assetsImagesIllustrationSearchNotFound),
            Gap(22.h),
            Text(
              'Oops Not Found!',
              style: AppStyles.medium24,
            ),
            Gap(30.h),
            Text(
              'Check our big offers, fresh products \n and fill your cart with items',
              textAlign: TextAlign.center,
              style: AppStyles.medium16,
            ),
            Gap(30.h),
            CustomButton.primary(text: 'Continue Shopping', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
