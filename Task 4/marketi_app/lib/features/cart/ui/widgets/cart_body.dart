import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/cart/ui/widgets/checkout.dart';
import 'package:marketi_app/features/cart/ui/widgets/product_on_cart_builder.dart';

class CartBody extends StatelessWidget {
  const CartBody({
    super.key,
    required this.productsOnCart,
  });
  final List<ProductModel> productsOnCart;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text(
              'Products on Cart',
              style: AppStyles.semiBold20,
            ),
          ),
          ProductOnCartBuilder(
            productsOnCart: productsOnCart,
          ),
          CheckoutField(
            products: productsOnCart,
          ),
        ],
      ),
    );
  }
}
