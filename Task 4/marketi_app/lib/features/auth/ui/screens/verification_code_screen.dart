import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/features/auth/ui/widgets/verification_type.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  static const String id = 'VerificationCodeScreen';

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            CustomAppBar(
              title: 'Verification Code',
            ),
            Gap(44),
            VerificationType(
              verificationType: args?['verificationType'],
            ),
          ],
        ),
      ),
    );
  }
}
