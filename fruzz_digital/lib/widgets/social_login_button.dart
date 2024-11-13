import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String image;

  const SocialLoginButton({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal:30),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
