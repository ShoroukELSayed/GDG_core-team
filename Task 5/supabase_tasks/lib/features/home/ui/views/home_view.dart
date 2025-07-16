import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_tasks/core/routing/routes.dart';
import 'package:supabase_tasks/core/services/insert_request.dart';
import 'package:supabase_tasks/core/services/operation_on_tables.dart';
import 'package:supabase_tasks/core/utils/app_color.dart';
import 'package:supabase_tasks/core/widgets/custom_app_bar.dart';
import 'package:supabase_tasks/core/widgets/custom_material_button.dart';
import 'package:supabase_tasks/features/login/ui/widgets/custom_text_form_field.dart';
import 'package:supabase_tasks/features/userInfo/logic/cubit/data_cubit_cubit.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context).enterData,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: GoogleFonts.adamina().fontFamily,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () async {
                      context.push(Routes.userInfo);
                    },
                    icon: Icon(
                      Icons.list,
                      color: AppColors.primaryColor,
                      size: 35,
                    ),
                  ),
                ],
              ),
              Divider(color: AppColors.primaryColor),
              Text(
                AppLocalizations.of(context).name,
                style: TextStyle(fontSize: 20),
              ),
              CustomTextFormField(
                controller: nameController,
                hintText: AppLocalizations.of(context).name,
              ),
              Text(
                AppLocalizations.of(context).age,
                style: TextStyle(fontSize: 20),
              ),
              CustomTextFormField(
                controller: ageController,
                hintText: AppLocalizations.of(context).age,
              ),
              Text(
                AppLocalizations.of(context).email,
                style: TextStyle(fontSize: 20),
              ),
              CustomTextFormField(
                controller: emailController,
                hintText: 'example@gmail.com',
              ),
              Text(
                AppLocalizations.of(context).password,
                style: TextStyle(fontSize: 20),
              ),
              CustomTextFormField(
                controller: passwordController,
                hintText: '.......',
              ),
              SizedBox(height: 10),
              CustomMaterialButton(
                name: AppLocalizations.of(context).insert,
                onPressed: () async {
                  context.read<DataCubit>().insertData(
                    InsertRequest(
                      name: nameController.text,
                      age: ageController.text,
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(AppLocalizations.of(context).insertSuccess),
                    ),
                  );

                  context.push(Routes.userInfo);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
