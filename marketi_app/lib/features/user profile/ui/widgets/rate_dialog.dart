import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/user%20profile/ui/widgets/rating_stars.dart';

class RateDialog extends StatefulWidget {
  const RateDialog({
    super.key,
  });

  @override
  State<RateDialog> createState() => _RateDialogState();
}

class _RateDialogState extends State<RateDialog> {
  int selectedStars = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Center(
        child: Text(
          'How would you rate us ?',
          style: AppStyles.medium20,
        ),
      ),
      content: SizedBox(
        height: 180.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.assetsImagesLogoSplashScreen,
              width: 120.w,
              height: 120.h,
            ),
            const RatingStars(),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
            style: AppStyles.medium20.copyWith(
              color: AppColors.placeholder,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Ok',
            style: AppStyles.medium24.copyWith(color: AppColors.lightBlue100),
          ),
        ),
      ],
    );
  }
}
