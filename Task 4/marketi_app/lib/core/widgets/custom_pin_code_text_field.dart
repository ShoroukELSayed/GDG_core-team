import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          activeColor: AppColors.outlinedColor,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(16),
          fieldHeight: 64,
          fieldWidth: 64,
          activeFillColor: Colors.white,
          inactiveFillColor: Colors.white,
          inactiveColor: AppColors.outlinedColor,
        ),
        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,
      ),
    );
  }
}
