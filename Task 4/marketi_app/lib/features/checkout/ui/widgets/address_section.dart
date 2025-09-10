import 'package:flutter/material.dart';
import 'package:marketi_app/features/checkout/ui/widgets/checkout_header.dart';
import 'package:marketi_app/features/checkout/ui/widgets/location.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckoutHeader(name: 'Address'),
        Location(),
      ],
    );
  }
}
