import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({
    super.key, this.onChanged,
  });

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: PinCodeTextField(
        appContext: context,
        length: 6,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          activeColor: AppColors.outlinedColor,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(16),
          fieldHeight: 60,
          fieldWidth: 47,
          activeFillColor: Colors.white,
          inactiveFillColor: Colors.white,
          inactiveColor: AppColors.outlinedColor,
        ),
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        onChanged: onChanged,
      ),
    );
  }
}
