import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/home/ui/widgets/product_item.dart';

class BuyAgain extends StatefulWidget {
  const BuyAgain({super.key});

  @override
  State<BuyAgain> createState() => _BuyAgainState();
}

class _BuyAgainState extends State<BuyAgain> {
  List<ProductItem> bestForYou = [
    ProductItem(
      productName: 'Black Sony Headphone',
      productPrice: '399 LE',
      productImage: Assets.assetsImagesHeadphones,
      addToCart: true,
    ),
    ProductItem(
      productName: 'HP Chromebook laptop',
      productPrice: '14999 LE',
      productImage: Assets.assetsImagesLaptopHPChromebookLaptop,
      addToCart: true,
    ),
    ProductItem(
      productName: 'Black JBL Airbods',
      productPrice: '799 LE',
      productImage: Assets.assetsImagesAirBudsPic,
      productDiscount: '10% OFF',
      addToCart: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bestForYou.length,
        itemBuilder: (context, index) {
          return bestForYou[index];
        },
      ),
    );
  }
}