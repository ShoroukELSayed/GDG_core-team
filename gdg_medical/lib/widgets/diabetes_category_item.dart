import 'package:flutter/material.dart';
import 'package:gdg_medical/widgets/custom_text.dart';


class DiabetesCategoryItem extends StatelessWidget {
  const DiabetesCategoryItem(
      {super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 149,
      width: 107,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 233, 234, 237),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          const Spacer(),
          CustomText(
            text: title,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
