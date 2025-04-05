import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/home/ui/widgets/category_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Row(
          spacing: 16,
          children: [
            CategoryItem(
              onTap: () {
                context.go(Routes.pampers);
              },
              categoryName: 'Pampers',
              categoryImage: Assets.assetsImagesPampers,
            ),
            CategoryItem(
                categoryName: 'Electronics',
                categoryImage: Assets.assetsImagesElectronics),
            CategoryItem(
                categoryName: 'Plants',
                categoryImage: Assets.assetsImagesPlant),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            CategoryItem(
                categoryName: 'Phones',
                categoryImage: Assets.assetsImagesPhone),
            CategoryItem(
                categoryName: 'Food', categoryImage: Assets.assetsImagesFood),
            CategoryItem(
                categoryName: 'Fashion',
                categoryImage: Assets.assetsImagesFashion),
          ],
        ),
      ],
    );
  }
}
