import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color.fromARGB(255, 199, 198, 198)),
        ),
        child: IconButton(
          iconSize: 20,
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
          
        ),
      ),
    );
  }
}
