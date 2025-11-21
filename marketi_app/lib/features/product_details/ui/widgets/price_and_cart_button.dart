import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/cubits/user_cart_cubit/user_cart_cubit.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';

class PriceAndCartButton extends StatelessWidget {
  const PriceAndCartButton({
    super.key,
    required this.price,
    required this.productId,
  });
  final String price;
  final int productId;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Price \n $price EGP',
          textAlign: TextAlign.center,
          style: AppStyles.medium18.copyWith(
            color: AppColors.dartBlue900,
          ),
        ),
        Gap(10.w),
        ElevatedButton(
            onPressed: () {
              context
                  .read<UserCartCubit>()
                  .addProductToCart(productId: productId);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(100.w, 48.h),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
                side: const BorderSide(color: AppColors.lightBlue100),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48.w, vertical: 12.h),
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 22.sp,
                    color: AppColors.lightBlue100,
                  ),
                  Text(
                    'Add to Cart',
                    style: AppStyles.medium14.copyWith(
                      color: AppColors.lightBlue100,
                    ),
                  ),
                ],
              ),
            ))
      ],
    );
  }
}
