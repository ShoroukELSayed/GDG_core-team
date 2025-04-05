import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/features/auth/ui/screens/congratulations_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/create_new_password_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/login_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/register_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/verification_code_screen.dart';
import 'package:marketi_app/features/home/ui/screens/home_screen.dart';
import 'package:marketi_app/features/onBoarding/ui/screens/onboarding_screen.dart';
import 'package:marketi_app/features/pampers/ui/screens/pampers_screen.dart';
import 'package:marketi_app/features/splash/ui/screens/splash_screen.dart';
import 'package:marketi_app/navigation_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: Routes.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: Routes.forgotPassword,
        builder: (context, state) => ForgotPasswordScreen(),
      ),
      GoRoute(
        path: Routes.verificationCode ,
        builder: (context, state) =>  VerificationCodeScreen(
          verificationType: state.extra as String,
          //solution
        ),
      ),
      GoRoute(
        path: Routes.createNewPassword,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),
      GoRoute(
        path: Routes.congratulations,
        builder: (context, state) => const CongratulationsScreen(),
      ),
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.navigation,
        builder: (context, state) => const NavigationScreen(),
      ),
      GoRoute(
        path: Routes.pampers,
        builder: (context, state) => const PampersScreen(),
      ),
    ],
  );
}
