import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImagesSection extends StatelessWidget {
  const ProductImagesSection({
    super.key,
    required this.images, required this.thumbnail,
  });
  final String thumbnail;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 14.h),
          child:CachedNetworkImage(
            imageUrl: thumbnail,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              images.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: CachedNetworkImage(
                  imageUrl: images[index],
                  width: 50.w,
                  height: 50.h,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
