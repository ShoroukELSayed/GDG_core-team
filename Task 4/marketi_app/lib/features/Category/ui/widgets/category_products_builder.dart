import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/Category/data/models/category_products_item_model.dart';
import 'package:marketi_app/features/Category/ui/widgets/category_products.dart';

class CategoryProductsBuilder extends StatefulWidget {
  const CategoryProductsBuilder({super.key});

  @override
  State<CategoryProductsBuilder> createState() =>
      _CategoryProductsBuilderState();
}

class _CategoryProductsBuilderState extends State<CategoryProductsBuilder> {
  List<CategoryProductsItem> pampersProducts = [
    CategoryProductsItem(
      categoryProductsItemModel: CategoryProductsItemModel(
        productPrice: 'Price: 345,00 EGP',
        productName: 'Pampers Swaddlers',
        deliveryTime: 'Deliver in 60 mins',
        productImage: Assets.assetsImagesPampers,
        productDescription: '84 Diapers',
      ),
    ),
    CategoryProductsItem(
      categoryProductsItemModel: CategoryProductsItemModel(
        productPrice: 'Price: 599,00 EGP',
        productName: 'Seventh Generation',
        deliveryTime: 'Deliver in 45 mins',
        productImage: Assets.assetsImagesSeventhGeneration2,
        productDescription: '152 Diapers',
      ),
    ),
    CategoryProductsItem(
      categoryProductsItemModel: CategoryProductsItemModel(
        productPrice: 'Price: 88,00 EGP',
        productName: 'Seventh Generation',
        deliveryTime: 'Deliver in 45 mins',
        productImage: Assets.assetsImagesSeventhGeneration1,
        productDescription: '24 Diapers',
      ),
    ),
    CategoryProductsItem(
      categoryProductsItemModel: CategoryProductsItemModel(
        productPrice: 'Price: 345,00 EGP',
        productName: 'Pampers Swaddlers',
        deliveryTime: 'Deliver in 60 mins',
        productImage: Assets.assetsImagesPampers,
        productDescription: '84 Diapers',
      ),
    ),
    CategoryProductsItem(
      categoryProductsItemModel: CategoryProductsItemModel(
        productPrice: 'Price: 599,00 EGP',
        productName: 'Seventh Generation',
        deliveryTime: 'Deliver in 45 mins',
        productImage: Assets.assetsImagesSeventhGeneration2,
        productDescription: '152 Diapers',
      ),
    ),
    CategoryProductsItem(
      categoryProductsItemModel: CategoryProductsItemModel(
        productPrice: 'Price: 88,00 EGP',
        productName: 'Seventh Generation',
        deliveryTime: 'Deliver in 45 mins',
        productImage: Assets.assetsImagesSeventhGeneration1,
        productDescription: '24 Diapers',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(0),
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
