import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';
import 'package:marketi_app/features/Category/data/models/category_products_item_model.dart';

class CategoryProductsItem extends StatefulWidget {
  const CategoryProductsItem({
    super.key,
    required this.categoryProductsItemModel,
  });

  final CategoryProductsItemModel categoryProductsItemModel;
  @override
  State<CategoryProductsItem> createState() => _CategoryProductsItemState();
}

class _CategoryProductsItemState extends State<CategoryProductsItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            widget.categoryProductsItemModel.productImage,
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
          const Gap(8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.categoryProductsItemModel.productName,
                      style: AppStyles.medium14,
                    ),
                    const Spacer(),
                    const FavoriteIconButton(),
                  ],
                ),
                Text(
                  widget.categoryProductsItemModel.productDescription,
                  style: AppStyles.medium12
                      .copyWith(color: AppColors.hintTextColor),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: AppColors.primaryColor,
                      size: 18,
                    ),
                    const Gap(4),
                    Text(
                      widget.categoryProductsItemModel.deliveryTime,
                      style: AppStyles.medium12
                          .copyWith(color: AppColors.dartBlue700),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.categoryProductsItemModel.productPrice,
                      style: AppStyles.medium14,
                    ),
                    const Spacer(),
                    const StarIconButton(),
                    Text(
                      '4.5',
                      style: AppStyles.medium12
                          .copyWith(color: AppColors.secondaryColor),
                    ),
                  ],
                ),
                CustomButton.secondary(
                    text: 'Add', onPressed: () {}, width: double.infinity),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
