import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/cart/ui/widgets/icon_container.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({
    super.key,
  });

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconContainer(
          onTap: (){
            if(count > 1){
              count--;
            }
            setState(() {});
          },
          icon: count == 1 ? Icons.delete : Icons.remove,
          color: count == 1 ? Colors.red : AppColors.primaryColor,
        ),
        Spacer(),
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppColors.primaryColor.withOpacity(0.1),
          ),
          child: Center(
            child: Text(
              count.toString(),
              style: AppStyles.semiBold14,
            ),
          ),
        ),
        Spacer(),
        IconContainer(
          onTap: () {
            count++;
            setState(() {});
          },
          icon: Icons.add,
          color: AppColors.primaryColor,
        ),
      ],
    );
  }
}
