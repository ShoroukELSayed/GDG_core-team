import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/features/auth/logic/register_cubit/register_cubit.dart';
import 'package:marketi_app/features/auth/ui/widgets/resgister_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  // static const String id = 'RegisterScreen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(ApiServices()),
      child: const Scaffold(
        body: ResgisterBody(),
      ),
    );
  }
}
