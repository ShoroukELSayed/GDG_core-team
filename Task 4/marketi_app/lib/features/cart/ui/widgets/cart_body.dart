import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/cart/ui/widgets/checkout.dart';
import 'package:marketi_app/features/cart/ui/widgets/product_on_cart_builder.dart';

class CartBody extends StatelessWidget {
  const CartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Products on Cart',
              style: AppStyles.semiBold20,
            ),
          ),
          const ProductOnCartBuilder(),
          Checkout(),
        ],
      ),
    );
  }
}
