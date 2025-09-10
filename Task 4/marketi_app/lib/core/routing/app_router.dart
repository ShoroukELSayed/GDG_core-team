import 'package:go_router/go_router.dart';
import 'package:marketi_app/core/models/brand_model.dart';
import 'package:marketi_app/core/models/category_model.dart';
import 'package:marketi_app/core/models/product_model.dart';
import 'package:marketi_app/core/routing/routes.dart';
import 'package:marketi_app/features/all%20products/ui/screens/all_brands_screen.dart';
import 'package:marketi_app/features/all%20products/ui/screens/all_categories.dart';
import 'package:marketi_app/features/all%20products/ui/screens/all_products_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/congratulations_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/create_new_password_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/login_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/register_screen.dart';
import 'package:marketi_app/features/auth/ui/screens/active_reset_pass.dart';
import 'package:marketi_app/features/checkout/ui/screens/checkout_screen.dart';
import 'package:marketi_app/features/checkout/ui/screens/success_order_screen.dart';
import 'package:marketi_app/features/home/ui/screens/home_screen.dart';
import 'package:marketi_app/features/onBoarding/ui/screens/onboarding_screen.dart';
import 'package:marketi_app/features/Category/ui/screens/category_screen.dart';
import 'package:marketi_app/features/product_details/ui/screens/product_details_screen.dart';
import 'package:marketi_app/features/search/ui/screens/search_screen.dart';
import 'package:marketi_app/features/splash/ui/screens/splash_screen.dart';
import 'package:marketi_app/features/user%20profile/ui/screens/user_profile_screen.dart';
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
        path: Routes.checkout,
        builder: (context, state) => const CheckoutScreen(),
      ),
      GoRoute(
        path: Routes.verificationCode,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return ActiveResetPass(
            verificationType: extra['type'],
            email: extra['value'],
          );
        },
      ),
      GoRoute(
          path: Routes.createNewPassword,
          builder: (context, state) {
            final email = state.extra as String;
            return CreateNewPasswordScreen(email: email);
          }),
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
        builder: (context, state) {
          final currentIndex = state.extra as int?;
          return NavigationScreen(currentIndex: currentIndex);
        },
      ),
      GoRoute(
        path: Routes.userProfile,
        builder: (context, state) => const UserProfileScreen(),
      ),
      GoRoute(
        path: Routes.productDetails,
        builder: (context, state) => ProductDetailsScreen(
          product: state.extra as ProductModel,
        ),
      ),
      GoRoute(
        path: Routes.successOrder,
        builder: (context, state) => const SuccessOrderScreen(),
      ),
      GoRoute(
          path: Routes.category,
          builder: (context, state) {
            final extra = state.extra as String;
            return CategoryScreen(
              categoryName: extra,
            );
          }),
      GoRoute(
          path: Routes.search,
          builder: (context, state) {
            return const SearchScreen();
          }),
      GoRoute(
        path: Routes.allProducts,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final name = extra['name'] as String;
          final products = extra['products'] as List<ProductModel>;
          return AllProductsScreen(
            name: name,
            products: products,
          );
        },
      ),
      GoRoute(
        path: Routes.allCategories,
        builder: (context, state) {
          final products = state.extra as List<CategoryModel>;
          return AllCategoriesScreen(products: products);
        },
      ),
      GoRoute(
        path: Routes.allBrands,
        builder: (context, state) {
          final brands = state.extra as List<BrandModel>;
          return AllBrandsScreen(brands: brands);
        },
      ),
    ],
  );
}
