import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'category_item.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CategoryItem(
          colors: [
            Color(0xffFF9598),
            Color(0xffFF70A7),
          ],
          categoryName: 'Dental',
        ),
        const Spacer(),
        CategoryItem(
          onTap: () => context.go('/CategoryListingScreen'),
          colors: const [
            Color(0xff19E5A5),
            Color(0xff15BD92),
          ],
          categoryName: 'Wellness',
        ),
        const Spacer(),
        const CategoryItem(
          colors: [
            Color(0xffFFC06F),
            Color(0xffFF793A),
          ],
          categoryName: 'Homeo',
        ),
        const Spacer(),
        const CategoryItem(
          colors: [
            Color(0xff4DB7FF),
            Color(0xff3E7DFF),
          ],
          categoryName: 'Eye care',
        ),
      ],
    );
  }
}
