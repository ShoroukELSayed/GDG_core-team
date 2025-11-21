import 'package:flutter/material.dart';
import 'package:gdg_medical/widgets/custom_text.dart';

class OptionProfile extends StatelessWidget {
  const OptionProfile({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Image(
            image: AssetImage(icon),
          ),
          const SizedBox(
            width: 20,
          ),
          CustomText(
            text: text,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 15,
          ),
        ],
      ),
    );
  }
}
