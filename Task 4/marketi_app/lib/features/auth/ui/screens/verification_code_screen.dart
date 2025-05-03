import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';
import 'package:marketi_app/features/auth/logic/forgot_pass_cubit/forgot_pass_cubit.dart';
import 'package:marketi_app/features/auth/logic/verify_code_cubit/verify_code_cubit.dart';
import 'package:marketi_app/features/auth/ui/widgets/verification_type.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen(
      {super.key, required this.verificationType, required this.email});
  final String verificationType;
  final String email;
  static const String id = 'VerificationCodeScreen';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VerifyCodeCubit>(
          create: (context) => VerifyCodeCubit(ApiServices()),
        ),
        BlocProvider<ForgotPassCubit>(
          create: (context) => ForgotPassCubit(ApiServices()),
        ),
      ],
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const CustomAppBar(
                title: 'Verification Code',
              ),
              const Gap(44),
              VerificationType(
                  verificationType: verificationType, email: email),
            ],
          ),
        ),
      ),
    );
  }
}
