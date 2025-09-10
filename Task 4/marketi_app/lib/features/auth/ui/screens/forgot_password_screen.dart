import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/features/auth/ui/widgets/forgot_password_type.dart';

// ignore: must_be_immutable
class ForgotPasswordScreen extends StatefulWidget {
  ForgotPasswordScreen({super.key});

  static const String id = 'ForgetPasswordScreen';
  bool isPhone = true;

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            const CustomAppBar(
              title: 'Forgot Password',
            ),
            Gap(44.h),
            ForgotPasswordType(
              isPhone: widget.isPhone,
            ),
            Gap(22.h),
            TextButton(
              onPressed: () {
                setState(() {
                  widget.isPhone = !widget.isPhone;
                });
              },
              child: widget.isPhone
                  ? Text(
                      'Try Another Way',
                      style: AppStyles.semiBold16,
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
