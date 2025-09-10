import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/widgets/product_item.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';

class BestForYou extends StatefulWidget {
  const BestForYou({super.key, required this.bestForYou});
  final List<ProductModel> bestForYou;

  @override
  State<BestForYou> createState() => _BestForYouState();
}

class _BestForYouState extends State<BestForYou> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: widget.bestForYou.length,
        itemBuilder: (context, index) {
          return ProductItem(
            productItemModel: ProductItemModel(
              productId: widget.bestForYou[index].id,
              productName: widget.bestForYou[index].title,
              productPrice: widget.bestForYou[index].price.toString(),
              productImage: widget.bestForYou[index].thumbnail,
              productRating: widget.bestForYou[index].rating,
              addToCart: true,
              productDiscount:
                  widget.bestForYou[index].discountPercentage.toString(),
            ),
          );
        },
      ),
    );
  }
}
