import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_back_button.dart';
import 'package:marketi_app/features/home/ui/widgets/search_field.dart';
import 'package:marketi_app/features/pampers/ui/widgets/Shopping_cart_icon.dart';
import 'package:marketi_app/features/pampers/ui/widgets/pampers_products_builder.dart';

class PampersScreen extends StatefulWidget {
  const PampersScreen({super.key});

  @override
  State<PampersScreen> createState() => _PampersScreenState();
}

class _PampersScreenState extends State<PampersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              children: [
                CustomBackButton(),
                const Spacer(),
                Text(
                  'Pampers',
                  style: AppStyles.semiBold20,
                ),
                const Spacer(),
                ShoppingCartIcon(),
              ],
            ),
            Gap(14),
            SearchField(),
            PampersProductsBuilder(),
            Gap(14),
          ],
        ),
      ),
    );
  }
}
