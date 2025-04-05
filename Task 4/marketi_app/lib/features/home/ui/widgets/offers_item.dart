import 'package:flutter/widgets.dart';
import 'package:marketi_app/core/utils/app_images.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 340,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(Assets.assetsImagesOffer1),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }
}
