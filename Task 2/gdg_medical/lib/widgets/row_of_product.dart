import 'package:flutter/material.dart';
import 'package:gdg_medical/constants/assets.dart';
import 'product_item.dart';

class RowOfProduct extends StatelessWidget {
  const RowOfProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(),
        ProductItem(
          image: Assets.resourceImagesAccuImage,
          title: 'Accu-check Active',
          subtitle: 'Test Strip',
          price: 'Rs.112',
        ),
        Spacer(),
        ProductItem(
          image: Assets.resourceImagesAccuImage,
          title: 'Accu-check Active',
          subtitle: 'Test Strip',
          price: 'Rs.112',
        ),
        Spacer(),
      ],
    );
  }
}
