import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/features/search/ui/widgets/custom_choice_chip.dart';

class MostSearched extends StatelessWidget {
  const MostSearched({
    super.key,
    required this.mostSearched,
  });
  final List<String> mostSearched;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.w,
      runSpacing: 16.h,
      children: mostSearched.map((name) {
        return CustomChoiceChip(name: name);
      }).toList(),
    );
  }
}
