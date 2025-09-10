import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/search_field.dart';
import 'package:marketi_app/features/search/ui/widgets/most_searched.dart';
import 'package:marketi_app/features/search/ui/widgets/recent_search.dart';
import 'package:marketi_app/features/search/ui/widgets/section_header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(title: '', profilePhoto: true),
              Gap(14.h),
              const SearchField(),
              Gap(14.h),
              const SectionHeader(
                name: 'Popular Search',
              ),
              Gap(14.h),
              const MostSearched(
                mostSearched: [
                  'Pampers',
                  'Toothpaste',
                  'iPhone',
                  'pants',
                  'Laptop',
                  'Fried Chicken',
                  'Sugar',
                  'Smart TV',
                  'Xbox',
                ],
              ),
              Gap(24.h),
              const SectionHeader(
                name: 'Search History',
              ),
              Gap(17.h),
              const RecentSearch(name: 'iphone XS Max'),
              const Divider(
                color: AppColors.stroke,
              ),
              const RecentSearch(name: 'Laptop Lenovo ideapad 3'),
              const Divider(
                color: AppColors.stroke,
              ),
              const RecentSearch(name: 'White Sweet Pants'),
              const Divider(
                color: AppColors.stroke,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
