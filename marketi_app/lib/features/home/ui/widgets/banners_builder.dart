import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/home/ui/widgets/banners_item.dart';

class BannersBuilder extends StatelessWidget {
  BannersBuilder({
    super.key,
  });

  final List<Widget> banners = [
    const BannersItem(image: Assets.assetsImagesOffer1),
    const BannersItem(image: Assets.assetsImagesOffer2),
    const BannersItem(image: Assets.assetsImagesOffer3),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: 374.w,
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: banners.length,
        itemBuilder: (context, index) {
          return banners[index];
        },
      ),
    );
  }
}
