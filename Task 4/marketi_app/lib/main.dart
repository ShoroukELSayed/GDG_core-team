import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:marketi_app/features/onBoarding/ui/screens/onboarding_screen.dart';

import 'features/auth/ui/screens/login_screen.dart';
import 'features/splash/ui/screens/splash_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MarketiApp(),
    ),
  );
}

class MarketiApp extends StatelessWidget {
  const MarketiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
