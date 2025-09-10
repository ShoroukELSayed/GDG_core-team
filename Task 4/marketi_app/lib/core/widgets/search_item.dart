import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.search);
      },
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primaryColor,
          ),
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 24.sp,
              color: AppColors.dartBlue900,
            ),
            SizedBox(width: 4.w),
            Text(
              'What are you looking for ? ',
              style: AppStyles.regular16,
            ),
            const Spacer(),
            Image.asset(
              Assets.assetsImagesFilterIcon,
              height: 35.h,
              width: 35.w,
            ),
          ],
        ),
      ),
    );
  }
}
