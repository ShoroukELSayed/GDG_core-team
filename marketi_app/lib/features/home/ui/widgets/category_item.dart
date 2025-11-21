import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.categoryName,
      required this.categoryImage,
      this.onTap});

  final String categoryName, categoryImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 105.w,
            height: 90.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffB2CCFF).withValues(alpha: .7),
              ),
              borderRadius: BorderRadius.circular(8)
          ),
          child: CachedNetworkImage(
                  imageUrl:categoryImage,
                ),
          ),
          Text(
            categoryName,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: AppStyles.medium16.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
