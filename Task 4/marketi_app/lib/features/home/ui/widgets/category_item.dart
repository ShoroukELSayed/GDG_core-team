import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.categoryName, required this.categoryImage, this.onTap});

  final String categoryName, categoryImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 105,
            height: 96,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffB2CCFF).withOpacity(0.7),
              ),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(categoryImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            categoryName,
            style: AppStyles.medium16.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
