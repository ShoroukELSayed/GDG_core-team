import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/pampers/ui/widgets/pampers_products.dart';

class PampersProductsBuilder extends StatefulWidget {
  const PampersProductsBuilder({super.key});

  @override
  State<PampersProductsBuilder> createState() => _PampersProductsBuilderState();
}

class _PampersProductsBuilderState extends State<PampersProductsBuilder> {
  List<PampersProductsItem> pampersProducts = [
    PampersProductsItem(
      productPrice: 'Price: 345,00 EGP',
      productName: 'Pampers Swaddlers',
      deliveryTime: 'Deliver in 60 mins',
      productImage: Assets.assetsImagesPampers,
      productDescription: '84 Diapers',
    ),
    PampersProductsItem(
      productPrice: 'Price: 599,00 EGP',
      productName: 'Seventh Generation',
      deliveryTime: 'Deliver in 45 mins',
      productImage: Assets.assetsImagesSeventhGeneration2,
      productDescription: '152 Diapers',
    ),
    PampersProductsItem(
      productPrice: 'Price: 88,00 EGP',
      productName: 'Seventh Generation',
      deliveryTime: 'Deliver in 45 mins',
      productImage: Assets.assetsImagesSeventhGeneration1,
      productDescription: '24 Diapers',
    ),
    PampersProductsItem(
      productPrice: 'Price: 345,00 EGP',
      productName: 'Pampers Swaddlers',
      deliveryTime: 'Deliver in 60 mins',
      productImage: Assets.assetsImagesPampers,
      productDescription: '84 Diapers',
    ),
    PampersProductsItem(
      productPrice: 'Price: 599,00 EGP',
      productName: 'Seventh Generation',
      deliveryTime: 'Deliver in 45 mins',
      productImage: Assets.assetsImagesSeventhGeneration2,
      productDescription: '152 Diapers',
    ),
    PampersProductsItem(
      productPrice: 'Price: 88,00 EGP',
      productName: 'Seventh Generation',
      deliveryTime: 'Deliver in 45 mins',
      productImage: Assets.assetsImagesSeventhGeneration1,
      productDescription: '24 Diapers',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          height: 1,
        ),
        itemCount: pampersProducts.length,
        itemBuilder: (context, index) {
          return pampersProducts[index];
        },
      ),
    );
  }
}
