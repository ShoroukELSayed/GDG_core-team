import 'package:flutter/material.dart';
import 'package:supabase_tasks/core/utils/app_color.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key, required this.name, required this.onPressed});
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.primaryColor,
      minWidth: double.infinity,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
      height: 50,
      child: Text(name, style: TextStyle(fontSize: 20)),
    );
  }
}
