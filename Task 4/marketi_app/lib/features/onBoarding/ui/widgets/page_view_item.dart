import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/features/onBoarding/data/page_view_item_model.dart';
import 'package:marketi_app/features/onBoarding/ui/widgets/page_indicator.dart';

class PageViewItem extends HookWidget {
  const PageViewItem({
    super.key,
    required this.pageViewItemModel,
    required this.controller,
    required this.pageIndex,
  });
  final PageViewItemModel pageViewItemModel;
  final PageController controller;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(120.h),
          Image.asset(pageViewItemModel.image),
          Gap(40.h),
          PageIndicator(controller: controller),
          Gap(24.h),
          Text(
            pageViewItemModel.title,
            style: AppStyles.semiBold20,
          ),
          Gap(40.h),
          Text(
            pageViewItemModel.description,
            style: AppStyles.medium14,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomButton.primary(
            text: pageIndex == 2 ? 'Get Start' : 'Next',
            onPressed: () {
              pageIndex == 2
                  ? context.go(Routes.login)
                  : controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
            },
          ),
          Gap(48.h),
        ],
      ),
    );
  }
}
