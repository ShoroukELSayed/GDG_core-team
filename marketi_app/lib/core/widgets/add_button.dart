import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/widgets/custom_button.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.onPressed,
    required this.name,
  });
  final VoidCallback onPressed;
  final String name;

  @override
  Widget build(BuildContext context) {
    return CustomButton.secondary(
      text: name,
      onPressed: onPressed,
      width: 1.sw,
    );
  }
}
