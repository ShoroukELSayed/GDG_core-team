import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/features/checkout/ui/widgets/checkout_header.dart';
import 'package:marketi_app/features/checkout/ui/widgets/payment_details.dart';

class PaymentSummarySection extends StatelessWidget {
  const PaymentSummarySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CheckoutHeader(name: 'Payment'),
        Container(
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            border: Border.all(color: AppColors.rect),
          ),
          child: const Column(
            children: [
              PaymentDetails(
                itemName: 'Subtotal (3 items)',
                price: 'EGP 1,120,00',
              ),
              PaymentDetails(
                itemName: 'Delivery Fees',
                price: 'EGP 10,00',
              ),
              PaymentDetails(
                itemName: 'Total',
                price: 'EGP 1,130,00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
