import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/cart/data/models/product_cart_item_model.dart';
import 'package:marketi_app/features/cart/ui/widgets/product_cart_item.dart';

class ProductOnCartBuilder extends StatefulWidget {
  const ProductOnCartBuilder({super.key});

  @override
  State<ProductOnCartBuilder> createState() => _ProductOnCartBuilderState();
}

class _ProductOnCartBuilderState extends State<ProductOnCartBuilder> {
  List<ProductCartItem> productsOnCart = [
    ProductCartItem(
      productCartItemModel: ProductCartItemModel(
        productImage: Assets.assetsImagesPampers,
        productName: 'Pampers Swaddlers',
        productDescription: '84 Diapers',
        productPrice: 'Price: 345,00 EGP',
      ),
    ),
    ProductCartItem(
      productCartItemModel: ProductCartItemModel(
        productImage: Assets.assetsImagesSeventhGeneration1,
        productName: 'Seventh Generation',
        productDescription: '24 Diapers',
        productPrice: 'Price: 88,00 EGP',
      ),
    ),
    ProductCartItem(
      productCartItemModel: ProductCartItemModel(
        productImage: Assets.assetsImagesSeventhGeneration2,
        productName: 'Seventh Generation',
        productDescription: '152 Diapers',
        productPrice: 'Price: 599,00 EGP',
      ),
    ),
    ProductCartItem(
      productCartItemModel: ProductCartItemModel(
        productImage: Assets.assetsImagesPampers,
        productName: 'Pampers Swaddlers',
        productDescription: '84 Diapers',
        productPrice: 'Price: 345,00 EGP',
      ),
    ),
    ProductCartItem(
      productCartItemModel: ProductCartItemModel(
        productImage: Assets.assetsImagesPampers,
        productName: 'Pampers Swaddlers',
        productDescription: '84 Diapers',
        productPrice: 'Price: 345,00 EGP',
      ),
    ),
    ProductCartItem(
      productCartItemModel: ProductCartItemModel(
        productImage: Assets.assetsImagesPampers,
        productName: 'Pampers Swaddlers',
        productDescription: '84 Diapers',
        productPrice: 'Price: 345,00 EGP',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: productsOnCart.length,
        itemBuilder: (context, index) {
          return productsOnCart[index];
        },
      ),
    );
  }
}
