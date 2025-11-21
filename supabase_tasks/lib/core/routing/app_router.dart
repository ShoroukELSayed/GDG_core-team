import 'package:go_router/go_router.dart';
import 'package:supabase_tasks/core/routing/routes.dart';
import 'package:supabase_tasks/features/home/ui/views/home_view.dart';
import 'package:supabase_tasks/features/login/ui/views/login_view.dart';
import 'package:supabase_tasks/features/login/ui/views/register_view.dart';
import 'package:supabase_tasks/features/splash/ui/views/splash_view.dart';
import 'package:supabase_tasks/features/userInfo/ui/view/user_info_view.dart';

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
          return UserInfoView();
        },
      ),
    ],
  );
}
