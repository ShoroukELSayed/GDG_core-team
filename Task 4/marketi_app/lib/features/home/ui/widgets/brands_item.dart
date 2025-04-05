import 'package:flutter/material.dart';

class BrandsItem extends StatelessWidget {
  const BrandsItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFB2CCFF),
        ),
        borderRadius: BorderRadius.circular(8),
        image:  DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
