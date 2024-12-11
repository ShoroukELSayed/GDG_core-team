import 'package:flutter/material.dart';
import 'package:gdg_medical/widgets/contant_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff4157FF),
                Color(0xff3D50E7),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: -230,
          child: Container(
            width: 430,
            height: 430,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
          ),
        ),
        const Positioned(
          child: ContantAppBar(),
        )
      ],
    );
  }
}
