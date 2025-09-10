import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/checkout/ui/widgets/checkout_elements.dart';
import 'package:marketi_app/features/checkout/ui/widgets/checkout_header.dart';

class DeliverySection extends StatelessWidget {
  const DeliverySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CheckoutHeader(name: 'Delivery time'),
        CheckoutElements(
          icon: Image.asset(Assets.assetsImagesDeliveryIcon),
          text: 'Within 2 days',
        ),
      ],
    );
  }
}
