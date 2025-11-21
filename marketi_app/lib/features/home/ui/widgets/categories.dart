import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/models/category_model.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/features/home/ui/widgets/category_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categories});
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 8.h,
        crossAxisSpacing: 16.w,
        physics: const NeverScrollableScrollPhysics(),
        children: categories.map((category) {
          return CategoryItem(
            onTap: () {
              context
                  .read<ProductCubit>()
                  .getProductsByCategory(slug: category.slug);
              context.push(Routes.category, extra:category.name);
            },
            categoryName: category.name,
            categoryImage: category.image,
          );
        }).toList(),
      ),
    );
  }
}
