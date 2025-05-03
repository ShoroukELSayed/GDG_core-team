import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_back_button.dart';
import 'package:marketi_app/features/home/ui/widgets/search_field.dart';
import 'package:marketi_app/features/Category/ui/widgets/Shopping_cart_icon.dart';
import 'package:marketi_app/features/Category/ui/widgets/category_products_builder.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              children: [
                const CustomBackButton(),
                const Spacer(),
                Text(
                  'Pampers',
                  style: AppStyles.semiBold20,
                ),
                const Spacer(),
                const ShoppingCartIcon(),
              ],
            ),
            const Gap(14),
            const SearchField(),
            const CategoryProductsBuilder(),
            const Gap(14),
          ],
        ),
      ),
    );
  }
}
