import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/features/home/ui/widgets/banners_builder.dart';
import 'package:marketi_app/features/home/ui/widgets/best_for_you_section.dart';
import 'package:marketi_app/features/home/ui/widgets/brands_section.dart';
import 'package:marketi_app/features/home/ui/widgets/buy_again_section.dart';
import 'package:marketi_app/features/home/ui/widgets/category_section.dart';

import 'package:marketi_app/features/home/ui/widgets/home_app_bar.dart';
import 'package:marketi_app/core/widgets/search_item.dart';
import 'package:marketi_app/features/home/ui/widgets/popular_products_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        child: ListView(
          children: [
            const HomeAppBar(),
            Gap(14.h),
            const SearchItem(),
            Gap(14.h),
            BannersBuilder(),
            Gap(14.h),
            const PopularProductsSection(),
            Gap(14.h),
            const CategorySection(),
            Gap(14.h),
            const BestForYouSection(),
            Gap(14.h),
            const BrandsSection(),
            Gap(14.h),
            const BuyAgainSection(),
            Gap(20.h),
          ],
        ),
      ),
    );
  }
}
