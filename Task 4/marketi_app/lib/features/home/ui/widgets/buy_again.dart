import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/widgets/product_item.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';

class BuyAgain extends StatefulWidget {
  const BuyAgain({super.key, required this.products});
  final List<ProductModel> products;

  @override
  State<BuyAgain> createState() => _BuyAgainState();
}

class _BuyAgainState extends State<BuyAgain> {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          return ProductItem(
            productItemModel: ProductItemModel(
              productId: widget.products[index].id,
              productName: widget.products[index].title,
              productPrice: widget.products[index].price.toString(),
              productImage: widget.products[index].thumbnail,
              productRating: widget.products[index].rating,
              addToCart: true,
            ),
          );
        },
      ),
    );
  }
}
