import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/home/ui/widgets/brands_item.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BrandsItem(
          image: Assets.assetsImagesTownTeamLogo2,
        ),
        const BrandsItem(
          image: Assets.assetsImagesJBLLogo2,
        ),
        const BrandsItem(
          image: Assets.assetsImagesSONYLogo2,
        ),
      ],
    );
  }
}