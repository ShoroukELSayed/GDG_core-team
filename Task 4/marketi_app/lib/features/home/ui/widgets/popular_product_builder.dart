import 'package:flutter/widgets.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';
import 'package:marketi_app/features/home/ui/widgets/product_item.dart';

class PopularProductBuilder extends StatefulWidget {
  const PopularProductBuilder({super.key});

  @override
  State<PopularProductBuilder> createState() => _PopularProductBuilderState();
}

class _PopularProductBuilderState extends State<PopularProductBuilder> {
  List<ProductItem> popularProducts = [
    ProductItem(
      productItemModel: ProductItemModel(
        productImage: Assets.assetsImagesSmartWatch,
        productName: 'Smart Watch',
        productPrice: '499 LE',
        productDiscount: '15% OFF',
      ),
    ),
    ProductItem(
      productItemModel: ProductItemModel(
        productImage: Assets.assetsImagesIPhone11Pro,
        productName: 'iPhone 11 Pro',
        productPrice: '19999 LE',
      ),
    ),
    ProductItem(
      productItemModel: ProductItemModel(
        productImage: Assets.assetsImagesAnkleBoots,
        productName: 'Women’s Ankle boots',
        productPrice: '499 LE',
      ),
    ),
    ProductItem(
      productItemModel: ProductItemModel(
        productImage: Assets.assetsImagesCamera,
        productName: 'Canon 5D Camera',
        productPrice: '4999 LE',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: popularProducts.length,
        itemBuilder: (context, index) {
          return popularProducts[index];
        },
      ),
    );
  }
}
