import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/features/auth/logic/forgot_pass_cubit/forgot_pass_cubit.dart';
import 'package:marketi_app/features/auth/ui/widgets/forgot_password_type.dart';
import 'package:marketi_app/core/widgets/custom_app_bar.dart';

// ignore: must_be_immutable
class ForgotPasswordScreen extends StatefulWidget {
  ForgotPasswordScreen({super.key});

  static const String id = 'ForgetPasswordScreen';
  bool isPhone = true;

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPassCubit(ApiServices()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const CustomAppBar(
                title: 'Forgot Password',
              ),
              const Gap(44),
              ForgotPasswordType(
                isPhone: widget.isPhone,
              ),
              const Gap(22),
              TextButton(
                onPressed: () {
                  setState(() {
                    widget.isPhone = !widget.isPhone;
                  });
                },
                child: widget.isPhone
                    ? Text(
                        'Try Another Way',
                        style: AppStyles.semiBold16,
                      )
                    : const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
