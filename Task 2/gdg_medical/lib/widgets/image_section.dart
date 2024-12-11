import 'package:flutter/material.dart';
import 'package:gdg_medical/constants/assets.dart';

import 'custom_text.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        padding: const EdgeInsets.only(
          left: 30,
          right: 150,
          top: 30,
        ),
        height: 146,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage(Assets.resourceImagesImageCover),
            fit: BoxFit.cover,
          ),
        ),
        child: const CustomText(
          text: 'Save extra on \n every order',
          color: Color(0xff1987FB),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}