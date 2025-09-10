import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/widgets/product_item.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';

class PopularGridViewBuilder extends StatelessWidget {
  const PopularGridViewBuilder({
    super.key,
    required this.products,
  });

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(0.w),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
        crossAxisSpacing: 1.w,
        mainAxisSpacing: 10.h,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItem(
          productItemModel: ProductItemModel(
            productId: products[index].id,
            productName: products[index].title,
            productPrice: '${products[index].price} LE',
            productImage: products[index].thumbnail,
            productDiscount: products[index].discountPercentage.toString(),
            addToCart: true,
            productRating: 3,
          ),
        );
      },
    );
  }
}
