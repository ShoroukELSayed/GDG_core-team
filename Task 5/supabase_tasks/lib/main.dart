import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_tasks/core/routing/app_router.dart';
import 'package:supabase_tasks/core/services/operation_on_tables.dart';
import 'package:supabase_tasks/features/userInfo/logic/cubit/data_cubit_cubit.dart';
import 'package:supabase_tasks/features/userInfo/logic/update_data/update_cubit.dart';
import 'package:supabase_tasks/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://tvqgofunvygveytqnjiu.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR2cWdvZnVudnlndmV5dHFuaml1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE1NjEzNTksImV4cCI6MjA2NzEzNzM1OX0.XnzKtjcba3vKdSE6_aTBWxVRvlD5FzPj6aNpU2Y0OO4",
  );
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const SupabaseTask(),
    ),
  );
}

class SupabaseTask extends StatelessWidget {
  const SupabaseTask({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataCubit(OperationOnTables())..getData(),
      child: MaterialApp.router(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
