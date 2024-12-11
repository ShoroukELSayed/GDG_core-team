import 'package:flutter/material.dart';
import 'package:gdg_medical/constants/assets.dart';

class CartEmptyScreen extends StatelessWidget {
  const CartEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                Assets.resourceImagesCart,
              ),
            ),
            SizedBox(height: 20),
            Text('Whoops'),
            SizedBox(height: 20),
            Text(
              'Your cart is empty!',
              style: TextStyle(color: Color.fromARGB(105, 9, 28, 63)),
            ),
          ],
        ),
      ),
    );
  }
}
