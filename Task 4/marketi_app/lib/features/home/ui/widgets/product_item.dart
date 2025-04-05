import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';

class ProductItem extends StatefulWidget {
  const ProductItem(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.productImage,
      this.productDiscount = '0%',
      this.addToCart = false});

  final String productName;
  final String productPrice;
  final String productImage;
  final String productDiscount;
  final bool addToCart;

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
              height: widget.addToCart ? 190 : 160,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffB2CCFF).withOpacity(0.5),
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
                        image: AssetImage(widget.productImage),
                      ),
                      color: Color(0xffD9E6FF),
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
                              widget.productPrice,
                              style: AppStyles.medium12.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            const Spacer(),
                            StarIconButton(),
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
                            widget.productName,
                            style: AppStyles.medium12.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Gap(5),
                        widget.addToCart
                            ? CustomButton.secondary(
                                text: 'Add', onPressed: () {}, width: 100)
                            : SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            widget.productDiscount != '0%'
                ? Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      width: 82,
                      height: 24,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assets.assetsImagesDiscount),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        widget.productDiscount,
                        style: AppStyles.medium12,
                      )),
                    ),
                  )
                : const SizedBox(),
            Positioned(
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
