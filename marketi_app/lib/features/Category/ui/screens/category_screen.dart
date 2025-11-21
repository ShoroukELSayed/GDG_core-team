import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/search_item.dart';
import 'package:marketi_app/features/Category/ui/widgets/category_products_builder.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({
    super.key,
    required this.categoryName,
  });
  final String categoryName;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
        child: Column(
          children: [
            CustomAppBar(title: widget.categoryName, shoppingCart: true),
            Gap(14.h),
            const SearchItem(),
            const CategoryProductsBuilder(),
            Gap(14.h),
          ],
        ),
      ),
    );
  }
}
