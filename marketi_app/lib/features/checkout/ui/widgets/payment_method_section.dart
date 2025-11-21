import 'package:flutter/material.dart';
import 'package:marketi_app/features/checkout/ui/widgets/checkout_elements.dart';
import 'package:marketi_app/features/checkout/ui/widgets/checkout_header.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckoutHeader(name: 'Payment'),
        CheckoutElements(
          icon: Icon(Icons.paid_outlined),
          text: 'Cash on delivery',
          isChange: true,
        ),
      ],
    );
  }
}
