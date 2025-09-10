import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.1.sh,
      width: 0.4.sw,
      margin: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: const Color(0xffD9E6FF),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.cover),
    );
  }
}
