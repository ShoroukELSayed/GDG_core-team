import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';
import 'package:marketi_app/features/home/ui/widgets/product_item.dart';

class BestForYou extends StatefulWidget {
  const BestForYou({super.key});

  @override
  State<BestForYou> createState() => _BestForYouState();
}

class _BestForYouState extends State<BestForYou> {
  List<ProductItem> bestForYou = [
    ProductItem(
      productItemModel: ProductItemModel(
        productName: 'Black JBL Airbods',
        productPrice: '799 LE',
        productImage: Assets.assetsImagesAirBudsPic,
        productDiscount: '10% OFF',
        addToCart: true,
      ),
    ),
    ProductItem(
      productItemModel: ProductItemModel(
        productName: 'Sony Smart TV 55 inch ',
        productPrice: '13999 LE',
        productImage: Assets.assetsImagesSmartTV,
        addToCart: true,
      ),
    ),
    ProductItem(
      productItemModel: ProductItemModel(
        productName: 'Black JBL Airbods',
        productPrice: '799 LE',
        productImage: Assets.assetsImagesAirBudsPic,
        productDiscount: '10% OFF',
        addToCart: true,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: bestForYou.length,
        itemBuilder: (context, index) {
          return bestForYou[index];
        },
      ),
    );
  }
}
