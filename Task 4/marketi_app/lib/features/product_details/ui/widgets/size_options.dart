import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/features/product_details/ui/widgets/size_option_item.dart';

class SizeOptions extends StatefulWidget {
  const SizeOptions({super.key});

  @override
  State<SizeOptions> createState() => _SizeOptionsState();
}

class _SizeOptionsState extends State<SizeOptions> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    final sizes = ['3', '2', '1'];

    return Row(
      children: List.generate(
        sizes.length,
        (index) => Padding(
          padding: EdgeInsets.only(right: 14.w),
          child: SizeOptionItem(
            size: sizes[index],
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
