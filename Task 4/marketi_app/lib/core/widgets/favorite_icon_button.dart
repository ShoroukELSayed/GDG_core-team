import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class FavoriteIconButton extends StatefulWidget {
  const FavoriteIconButton({super.key});

  @override
  State<FavoriteIconButton> createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: () {
        isFavorite = !isFavorite;
        setState(() {});
      },
      icon: isFavorite
          ? const Icon(
              Icons.favorite,
              color: AppColors.secondaryColor,
            )
          : const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
      iconSize: 18,
      style: IconButton.styleFrom(
        backgroundColor: Colors.white,
      ),
    );
  }
}
