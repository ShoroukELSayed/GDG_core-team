import 'package:go_router/go_router.dart';
import 'package:riverpod_task/core/routing/routes.dart';
import 'package:riverpod_task/features/home/ui/screens/home_screen.dart';
import 'package:riverpod_task/features/posts/ui/screens/posts_screen.dart';
import 'package:riverpod_task/features/user/ui/screens/user_screen.dart';

class AppRouter {
  static final GoRouter routers = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.user,
        builder: (context, state) => const UserScreen(),
      ),
      GoRoute(
        path: Routes.posts,
        builder: (context, state) => const PostsScreen(),
      ),
    ],
  );
}
