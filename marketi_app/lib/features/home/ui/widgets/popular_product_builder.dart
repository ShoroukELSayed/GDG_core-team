import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/features/home/data/models/product_item_model.dart';
import 'package:marketi_app/core/widgets/product_item.dart';

class PopularProductBuilder extends StatefulWidget {
  const PopularProductBuilder({super.key, required this.products});
  final List<ProductModel> products;

  @override
  State<PopularProductBuilder> createState() => _PopularProductBuilderState();
}

class _PopularProductBuilderState extends State<PopularProductBuilder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          return ProductItem(
            productItemModel: ProductItemModel(
              productId: widget.products[index].id,
              productName: widget.products[index].title,
              productPrice: widget.products[index].price.toString(),
              productImage: widget.products[index].thumbnail,
              productDiscount:
                  widget.products[index].discountPercentage.toString(),
              productRating: widget.products[index].rating,
            ),
          );
        },
      ),
    );
  }
}
