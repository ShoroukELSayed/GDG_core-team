import 'package:flutter/widgets.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/home/ui/widgets/offers_item.dart';

class OffersBuilder extends StatefulWidget {
  const OffersBuilder({super.key});

  @override
  State<OffersBuilder> createState() => _OffersBuilderState();
}

class _OffersBuilderState extends State<OffersBuilder> {
  List<Widget> offers = [
    const OffersItem(image: Assets.assetsImagesOffer1),
    const OffersItem(image: Assets.assetsImagesOffer2),
    const OffersItem(image: Assets.assetsImagesOffer3),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (context, index) {
          return offers[index];
        },
      ),
    );
  }
}
