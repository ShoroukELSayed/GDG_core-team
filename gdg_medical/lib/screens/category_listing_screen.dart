import 'package:flutter/material.dart';
import 'package:gdg_medical/widgets/custom_text.dart';
import 'package:gdg_medical/widgets/diabetes_product.dart';
import 'package:go_router/go_router.dart';

import '../constants/assets.dart';
import '../widgets/diabetes_category_item.dart';

class CategoryListingScreen extends StatelessWidget {
  const CategoryListingScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => context.go('/HomeScreen'),
        ),
        title: const CustomText(
          text: 'Diabetes Care',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: const [
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Categories',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),
            Row(children: [
              DiabetesCategoryItem(
                image: Assets.resourceImagesSugarSubstitute,
                title: 'Sugar \nSubstitute',
              ),
              Spacer(),
              DiabetesCategoryItem(

                image: Assets.resourceImagesJuicesVinegars,
                title: 'Juices &\nVinegars',
              ),
              Spacer(),
              DiabetesCategoryItem(
                image: Assets.resourceImagesVitaminsMedicines,
                title: 'Vitamins \nMedicines',
              ),
            ]),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'All Products',
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            DiabetesProduct(),
            SizedBox(height: 16),
            DiabetesProduct(),
            SizedBox(height: 16),
            DiabetesProduct(),
            SizedBox(height: 16),
            DiabetesProduct(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
