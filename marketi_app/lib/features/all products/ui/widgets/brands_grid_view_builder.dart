import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/models/brand_model.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/features/home/ui/widgets/brands_item.dart';

class BrandsGridViewBuilder extends StatelessWidget {
  const BrandsGridViewBuilder({
    super.key,
    required this.brands,
  });

  final List<BrandModel> brands;

  @override
  Widget build(BuildContext context) {
    return brands.isEmpty
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
              return BrandsItem(
                brand: brands[index],
                isHome: false,
                onTap: () {
                  context
                      .read<ProductCubit>()
                      .getProductByBrand(brandName: brands[index].name);
                  context.push(
                    Routes.category,
                    extra: {
                      "categoryName": brands[index].name,
                    },
                  );
                },
              );
            },
          );
  }
}
