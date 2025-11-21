import 'package:flutter/material.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/features/cart/data/models/product_cart_item_model.dart';
import 'package:marketi_app/features/cart/ui/widgets/product_cart_item.dart';

class ProductOnCartBuilder extends StatefulWidget {
  const ProductOnCartBuilder({super.key, required this.productsOnCart});
  final List<ProductModel> productsOnCart;

  @override
  State<ProductOnCartBuilder> createState() => _ProductOnCartBuilderState();
}

class _ProductOnCartBuilderState extends State<ProductOnCartBuilder> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: widget.productsOnCart.length,
        itemBuilder: (context, index) {
          return ProductCartItem(
              productCartItemModel: ProductCartItemModel(
            productId: widget.productsOnCart[index].id,
            productRating: widget.productsOnCart[index].rating.toString(),
            productName: widget.productsOnCart[index].title,
            productPrice: widget.productsOnCart[index].price.toString(),
            productImage: widget.productsOnCart[index].thumbnail,
            productDescription: widget.productsOnCart[index].description,
          ));
        },
      ),
    );
  }
}
