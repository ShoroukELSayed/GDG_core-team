import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/favorite_icon_button.dart';

class ProductHeaderRow extends StatelessWidget {
  const ProductHeaderRow({
    super.key,
    required this.name, required this.productId,
  });

  final String name;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            name,
            softWrap: true,
            style: AppStyles.medium14,
          ),
        ),
        const Spacer(),
         FavoriteIconButton(
          productId: productId,
        ),
      ],
    );
  }
}
