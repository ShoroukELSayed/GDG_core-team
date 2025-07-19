import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supabase_tasks/core/widgets/custom_app_bar.dart';
import 'package:supabase_tasks/features/home/ui/widgets/home_body.dart';
import 'package:supabase_tasks/generated/l10n.dart';

class HomeView extends HookWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final ageController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: CustomAppBar(title: AppLocalizations.of(context).home),
      ),
      body: HomeBody(
        nameController: nameController,
        ageController: ageController,
        emailController: emailController,
        passwordController: passwordController,
      ),
    );
  }
}
