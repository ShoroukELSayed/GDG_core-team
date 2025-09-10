import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';
import 'package:marketi_app/features/checkout/ui/widgets/address_section.dart';
import 'package:marketi_app/features/checkout/ui/widgets/delivery_section.dart';
import 'package:marketi_app/features/checkout/ui/widgets/payment_method_section.dart';
import 'package:marketi_app/features/checkout/ui/widgets/payment_summary_section.dart';
import 'package:marketi_app/features/checkout/ui/widgets/voucher_section.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: ListView(
          children: [
            const CustomAppBar(title: 'Checkout', profilePhoto: true),
            const AddressSection(),
            const DeliverySection(),
            const PaymentMethodSection(),
             Gap(12.h),
            const VoucherSection(),
            const PaymentSummarySection(),
            Gap(12.h),
            CustomButton.primary(
              text: 'Place Order',
              onPressed: () {
                context.push(Routes.successOrder);
              },
            ),
          ],
        ),
      ),
    );
  }
}
