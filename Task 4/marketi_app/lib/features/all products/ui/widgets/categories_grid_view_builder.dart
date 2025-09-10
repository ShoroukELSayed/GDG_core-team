import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/models/category_model.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/features/home/ui/widgets/category_item.dart';

class CategoriesGridViewBuilder extends StatelessWidget {
  const CategoriesGridViewBuilder({
    super.key,
    required this.products,
  });

  final List<CategoryModel> products;

  @override
  Widget build(BuildContext context) {
    return products.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : GridView.builder(
            padding: EdgeInsets.all(0.w),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 1.w,
              mainAxisSpacing: 0.h,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return CategoryItem(
                  categoryName: products[index].name,
                  categoryImage: products[index].image,
                  onTap: () {
                    context
                        .read<ProductCubit>()
                        .getProductsByCategory(slug: products[index].slug);
                    context.push(
                      Routes.category,
                      extra: {
                        "categoryName": products[index].name,
                      },
                    );
                  });
            },
          );
  }
}
