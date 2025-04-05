import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';

class PampersProductsItem extends StatefulWidget {
  const PampersProductsItem(
      {super.key,
      required this.productPrice,
      required this.productName,
      required this.productImage,
      required this.productDescription,
      required this.deliveryTime});
  final String productPrice;
  final String productName;
  final String productImage;
  final String productDescription;
  final String deliveryTime;

  @override
  State<PampersProductsItem> createState() => _PampersProductsItemState();
}

class _PampersProductsItemState extends State<PampersProductsItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            widget.productImage,
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
                      widget.productName,
                      style: AppStyles.medium14,
                    ),
                    const Spacer(),
                    FavoriteIconButton(),
                  ],
                ),
                Text(
                  widget.productDescription,
                  style: AppStyles.medium12
                      .copyWith(color: AppColors.hintTextColor),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: AppColors.primaryColor,
                      size: 18,
                    ),
                    const Gap(4),
                    Text(
                      widget.deliveryTime,
                      style: AppStyles.medium12
                          .copyWith(color: AppColors.dartBlue700),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.productPrice,
                      style: AppStyles.medium14,
                    ),
                    const Spacer(),
                    StarIconButton(),
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
