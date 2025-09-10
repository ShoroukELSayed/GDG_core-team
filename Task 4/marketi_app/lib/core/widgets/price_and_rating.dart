import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/star_icon_button.dart';

class PriceAndRating extends StatelessWidget {
  const PriceAndRating({super.key, required this.price, required this.rating});

  final String price;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$price LE',
          style: AppStyles.medium12.copyWith(color: Colors.black),
        ),
        const Spacer(),
        const StarIconButton(),
        Text(
          rating.toString(),
          style: AppStyles.medium12.copyWith(color: Colors.black),
        ),
      ],
    );
  }
}
