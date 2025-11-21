import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/models/category_model.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/search_item.dart';
import 'package:marketi_app/features/all%20products/ui/widgets/categories_grid_view_builder.dart';

class AllCategoriesScreen extends StatelessWidget {
  const AllCategoriesScreen({
    super.key,
    required this.products,
  });
  final List<CategoryModel> products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 40.h,
          left: 14.w,
          right: 14.w,
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: CustomAppBar(
                title: 'Categories',
                profilePhoto: true,
              ),
            ),
            SliverToBoxAdapter(child: Gap(14.h)),
            const SliverToBoxAdapter(child: SearchItem()),
            SliverToBoxAdapter(child: Gap(14.h)),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'All Products',
                  style: AppStyles.semiBold20,
                ),
              ),
            ),
            SliverToBoxAdapter(child: Gap(14.h)),
            SliverFillRemaining(
              child: CategoriesGridViewBuilder(
                products: products,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
