import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gdg_medical/constants/assets.dart';
import 'package:gdg_medical/widgets/custom_text.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.title, required this.icon, this.color});

  final String title;
  final Widget icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              fontSize: 14,
              color: color,
              fontWeight: FontWeight.w400,
            ),
            const CustomText(
              text: 'Aug 12, 2020 at 12:08 PM',
              fontSize: 13,
              color: Color.fromARGB(110, 9, 28, 63),
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ],
    );
  }
}
