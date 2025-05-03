import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
    required this.productItemModel,
  });

  final ProductItemModel productItemModel;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      child: Center(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              height: widget.productItemModel.addToCart ? 190 : 160,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffB2CCFF).withValues(alpha: .5),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    height: 86,
                    width: 152,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.productItemModel.productImage),
                      ),
                      color: const Color(0xffD9E6FF),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.productItemModel.productPrice,
                              style: AppStyles.medium12.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            const Spacer(),
                            const StarIconButton(),
                            Text(
                              '4.9',
                              style: AppStyles.medium12.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.productItemModel.productName,
                            style: AppStyles.medium12.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Gap(5),
                        widget.productItemModel.addToCart
                            ? CustomButton.secondary(
                                text: 'Add', onPressed: () {}, width: 100)
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            widget.productItemModel.productDiscount != '0%'
                ? Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      width: 82,
                      height: 24,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assets.assetsImagesDiscount),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        widget.productItemModel.productDiscount,
                        style: AppStyles.medium12,
                      )),
                    ),
                  )
                : const SizedBox(),
            const Positioned(
              top: 8,
              right: 24,
              child: FavoriteIconButton(),
            ),
          ],
        ),
      ),
    );
  }
}
