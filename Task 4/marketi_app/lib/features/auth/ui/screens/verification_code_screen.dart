import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/features/auth/ui/widgets/verification_type.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key, required this.verificationType});
  final String verificationType;
  static const String id = 'VerificationCodeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            CustomAppBar(
              title: 'Verification Code',
            ),
            Gap(44),
            VerificationType(verificationType: verificationType),
          ],
        ),
      ),
    );
  }
}
