import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/features/onBoarding/ui/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static  String id = 'SplashScreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, OnboardingScreen.id),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ZoomIn(
          duration: const Duration(seconds: 2),
          child: Image.asset(Assets.assetsImagesLogoSplashScreen),
        ),
      ),
    );
  }
}
