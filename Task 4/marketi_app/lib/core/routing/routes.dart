import 'package:flutter/material.dart';
import 'package:marketi_app/features/auth/ui/screens/congratulations_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/create_new_password_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/login_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/register_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/verification_code_screen.dart';
import 'package:marketi_app/features/home/ui/screens/home_screen.dart';
import 'package:marketi_app/features/onBoarding/ui/screens/onboarding_screen.dart';
import 'package:marketi_app/features/splash/ui/screens/splash_screen.dart';

Map<String, Widget Function(BuildContext)> routes =
    <String, Widget Function(BuildContext)>{
  SplashScreen.id: (context) => const SplashScreen(),
  OnboardingScreen.id: (context) => const OnboardingScreen(),
  LoginScreen.id: (context) => const LoginScreen(),
  RegisterScreen.id: (context) => const RegisterScreen(),
  ForgotPasswordScreen.id: (context) => ForgotPasswordScreen(),
  HomeScreen.id: (context) => const HomeScreen(),
  VerificationCodeScreen.id: (context) => const VerificationCodeScreen(),
  CreateNewPasswordScreen.id: (context) => const CreateNewPasswordScreen(),
  CongratulationsScreen.id: (context) => const CongratulationsScreen(),
};
