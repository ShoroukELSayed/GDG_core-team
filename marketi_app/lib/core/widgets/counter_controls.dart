import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/widgets/counter_display.dart';
import 'package:marketi_app/features/cart/ui/widgets/icon_container.dart';

class CounterControls extends StatelessWidget {
  const CounterControls({
    super.key,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconContainer(
            onTap: onDecrement,
            icon: count == 1 ? Icons.delete : Icons.remove,
            color: count == 1 ? Colors.red : AppColors.primaryColor,
          ),
        ),
        const Spacer(),
        CounterDisplay(count: count),
        const Spacer(),
        Expanded(
          child: IconContainer(
            onTap: onIncrement,
            icon: Icons.add,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
