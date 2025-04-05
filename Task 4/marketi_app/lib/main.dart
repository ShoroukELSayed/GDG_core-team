import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:marketi_app/core/routing/app_router.dart';

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
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        //   backgroundColor: Colors.white,
        //   selectedItemColor: AppColors.primaryColor,
        //   unselectedItemColor: Colors.grey,
        // ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig:AppRouter.router ,
    );
  }
}
