import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_elevated_button.dart';
import 'package:task1/widgets/hyper_link.dart';
import 'package:task1/screens/login_screen.dart';
import 'package:task1/screens/register_screen.dart';

import '../constants/assets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  static const String id = 'welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.resourceImagesWelcome),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 8),
                const Image(image: AssetImage(Assets.resourceImagesLogo)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Fruzz',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'digital',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                CustomElevatedButton(
                  colorButton: Colors.black,
                  name: 'Login',
                  colorText: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                const SizedBox(height: 10),
                CustomElevatedButton(
                  colorButton: Colors.white,
                  name: 'Register',
                  colorText: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                ),
                const Spacer(),
                HyperLink(
                    text: 'Continue as a guest',
                    color: const Color(0xff00CCC8),
                    alignment: Alignment.center),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
