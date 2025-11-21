import 'package:flutter/material.dart';
import 'package:gdg_medical/screens/category_listing_screen.dart';
import 'package:gdg_medical/screens/home_screen.dart';
import 'package:gdg_medical/screens/main_screen.dart';
import 'package:gdg_medical/screens/product_ditails.dart';
import 'package:gdg_medical/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

import 'screens/notification_screen.dart';

void main() {
  runApp(GDGMedical());
}

class GDGMedical extends StatelessWidget {
  GDGMedical({super.key});

  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/HomeScreen',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/NotificationScreen',
        builder: (context, state) => const NotificationScreen(),
      ),
      GoRoute(
        path: '/MainScreen',
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: '/CategoryListingScreen',
        builder: (context, state) => CategoryListingScreen(),
      ),
      GoRoute(
        path: '/ProductDitails',
        builder: (context, state) => const ProductDitails(),
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
