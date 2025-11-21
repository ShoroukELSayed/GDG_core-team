import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/features/auth/ui/widgets/active_reset_pass_type.dart';

class ActiveResetPass extends StatelessWidget {
  const ActiveResetPass({
    super.key,
    required this.verificationType,
    required this.email,
  });

  final String verificationType;
  final String email;
  static const String id = 'VerificationCodeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            const CustomAppBar(
              title: 'Verification Code',
            ),
            Gap(44.h),
            ActiveResetPassType(
              verificationType: verificationType,
              email: email,
            ),
          ],
        ),
      ),
    );
  }
}
