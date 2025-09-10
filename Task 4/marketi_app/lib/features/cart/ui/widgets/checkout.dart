import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';

class CheckoutField extends StatefulWidget {
  const CheckoutField({
    super.key, required this.products,
  });
  final List<ProductModel> products;

  @override
  State<CheckoutField> createState() => _CheckoutFieldState();
}

class _CheckoutFieldState extends State<CheckoutField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xffB2CCFF).withValues(alpha: 0.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suptotal (${widget.products.length} items)',
                  style: AppStyles.semiBold14
                      .copyWith(color: AppColors.dartBlue900),
                ),
                Text(
                  'EGP ${widget.products.map((e) => e.price).reduce((value, element) => value + element)}',
                  style: AppStyles.semiBold14
                      .copyWith(color: AppColors.dartBlue900),
                ),
              ],
            ),
            Gap(14.h),
            CustomButton.primary(
              text: 'Checkout',
              onPressed: () {
                context.push(Routes.checkout);
              },
            ),
          ],
        ),
      ),
    );
  }
}
