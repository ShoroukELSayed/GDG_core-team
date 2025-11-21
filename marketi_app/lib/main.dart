import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi_app/core/api/dio_consumer.dart';
import 'package:marketi_app/core/cache/cache_helper.dart';
import 'package:marketi_app/core/cubits/brands%20cubit/brands_cubit.dart';
import 'package:marketi_app/core/cubits/categories%20cubit/categories_cubit.dart';
import 'package:marketi_app/core/cubits/product%20cubit/product_cubit.dart';
import 'package:marketi_app/core/cubits/user_cart_cubit/user_cart_cubit.dart';
import 'package:marketi_app/core/cubits/user_favorite_cubit/user_favorite_cubit.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_cubit.dart';
import 'package:marketi_app/core/routing/app_router.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/features/auth/data/logic/auth_cubit/auth_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.inti();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => AuthCubit(ApiServices(DioConsumer(dio: Dio()))),
          ),
          BlocProvider(
            create: (_) => ProductCubit(ApiServices(DioConsumer(dio: Dio()))),
          ),
          BlocProvider(
            create: (_) =>
                CategoriesCubit(ApiServices(DioConsumer(dio: Dio()))),
          ),
          BlocProvider(
            create: (_) => BrandsCubit(ApiServices(DioConsumer(dio: Dio()))),
          ),
          BlocProvider(
            create: (_) => UserCartCubit(ApiServices(DioConsumer(dio: Dio()))),
          ),
          BlocProvider(
            create: (_) =>
                UserFavoriteCubit(ApiServices(DioConsumer(dio: Dio()))),
          ),
          BlocProvider(
            create: (_) =>
                UserPortfolioCubit(ApiServices(DioConsumer(dio: Dio()))),
          ),
        ],
        child: const MarketiApp(),
      ),
    ),
  );
}

class MarketiApp extends StatelessWidget {
  const MarketiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
