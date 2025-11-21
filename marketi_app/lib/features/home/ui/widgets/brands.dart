import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/models/brand_model.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/features/home/ui/widgets/brands_item.dart';

class Brands extends StatelessWidget {
  const Brands({super.key, required this.brands});
  final List<BrandModel> brands;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => Gap(16.w),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return BrandsItem(
            brand: brands[index],
            isHome: true,
            onTap: () {
              context
                  .read<ProductCubit>()
                  .getProductByBrand(brandName: brands[index].name);
              context.push(
                Routes.category,
                extra:  brands[index].name,
              );
            },
          );
        },
      ),
    );
  }
}
