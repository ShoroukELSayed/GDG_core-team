import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:marketi_app/features/auth/ui/widgets/login_body.dart';
import 'package:marketi_app/features/auth/ui/widgets/skip_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(ApiServices()),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            const SkipButton(),
            const Spacer(),
          ],
        ),
        body: const LoginBody(),
      ),
    );
  }
}
