import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/cubits/user_favorite_cubit/user_favorite_cubit.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class FavoriteIconButton extends StatelessWidget {
  const FavoriteIconButton({
    super.key,
    required this.productId,
  });

  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserFavoriteCubit, UserFavoriteState>(
      builder: (context, state) {
        final cubit = context.watch<UserFavoriteCubit>();
        final isFavorite = cubit.favoriteProducts.any((p) => p.id == productId);

        return IconButton.filled(
          onPressed: () {
            if (isFavorite) {
              cubit.removeProductFromFavorite(productId: productId);
            } else {
              cubit.addProductToFavorite(productId: productId);
            }
          },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
            color: isFavorite ? AppColors.dartBlue900 : Colors.black,
            size: 18.sp,
          ),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(6.w),
            minimumSize: Size(32.w, 32.h),
          ),
        );
      },
    );
  }
}
