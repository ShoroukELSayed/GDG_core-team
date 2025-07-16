import 'package:go_router/go_router.dart';
import 'package:supabase_task/core/routing/routes.dart';
import 'package:supabase_task/features/home/ui/views/home_view.dart';
import 'package:supabase_task/features/login/ui/views/login_view.dart';
import 'package:supabase_task/features/login/ui/views/register_view.dart';
import 'package:supabase_task/features/splash/ui/views/splash_view.dart';
import 'package:supabase_task/features/userInfo/ui/view/user_info.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: Routes.splash, builder: (context, state) => SplashView()),
      GoRoute(path: Routes.login, builder: (context, state) => LoginView()),
      GoRoute(
        path: Routes.register,
        builder: (context, state) => RegisterView(),
      ),
      GoRoute(path: Routes.home, builder: (context, state) => HomeView()),
      GoRoute(
        path: Routes.userInfo,
        builder: (context, state) {
          final data = state.extra as List<Map<String, dynamic>>;
          return UserInfo(
            data: data,
          );
        },
      ),
    ],
  );
}
