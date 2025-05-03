import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class ShoppingCartIcon extends StatelessWidget {
  const ShoppingCartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(
          Icons.shopping_cart_outlined,
          color: AppColors.primaryColor,
          size: 30,
        ),
        Positioned(
          top: -8,
          right: -2,
          child: Container(
            height: 30,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Center(
                child: Text(
              '3',
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ],
    );
  }
}
