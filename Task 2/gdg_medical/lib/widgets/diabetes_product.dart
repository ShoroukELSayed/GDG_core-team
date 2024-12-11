import 'package:flutter/material.dart';
import 'package:gdg_medical/constants/assets.dart';
import 'package:gdg_medical/widgets/product_item.dart';

class DiabetesProduct extends StatelessWidget {
  const DiabetesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(),
        ProductItem(
          isSale: true,
          image: Assets.resourceImagesAccImageSale,
          title: 'Accu-check Active',
          subtitle: 'Test Strip',
          price: 'Rs.112',
        ),
        Spacer(),
        ProductItem(
          isSale: true,
          image: Assets.resourceImagesOmronImage,
          title: 'Accu-check Active',
          subtitle: 'Test Strip',
          price: 'Rs.112',
        ),
        Spacer(),
      ],
    );
  }
}
