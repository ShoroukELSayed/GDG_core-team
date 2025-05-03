import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    super.key,
    required this.icon,required this.onTap, required this.color,
  });

  final IconData icon;
  final Color color ;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primaryColor.withValues(alpha: .1),
        ),
        child: Icon(icon,
          size: 30,
          color:color,
        ),
      ),
    );
  }
}
