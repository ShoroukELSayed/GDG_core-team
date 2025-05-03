import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/profile_photo.dart';
import 'package:marketi_app/features/cart/ui/widgets/cart_empty.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Spacer(),
                Text(
                  'Cart',
                  style: AppStyles.semiBold20,
                ),
                const Spacer(),
                const ProfilePhoto(),
              ],
            ),
          ),
          const CartEmpty()
        ],
      ),
    );
  }
}
