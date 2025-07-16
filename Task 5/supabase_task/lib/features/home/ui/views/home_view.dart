import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_task/core/routing/routes.dart';
import 'package:supabase_task/core/services/operation_on_tables.dart';
import 'package:supabase_task/core/services/insert_request.dart';
import 'package:supabase_task/core/utils/app_color.dart';
import 'package:supabase_task/core/widgets/custom_app_bar.dart';
import 'package:supabase_task/core/widgets/custom_material_button.dart';
import 'package:supabase_task/features/login/ui/widgets/custom_text_form_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final ageController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final String uid = Supabase.instance.client.auth.currentUser!.id;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: CustomAppBar(title: 'Home'),
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
                    'Enter Student Data',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: GoogleFonts.adamina().fontFamily,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () async {
                      List<Map<String, dynamic>> data =
                          await OperationOnTables.getData();
                      if (!context.mounted) return;
                      context.push(Routes.userInfo, extra: data);
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
              Text('Name', style: TextStyle(fontSize: 20)),
              CustomTextFormField(
                controller: nameController,
                hintText: 'Shorouk',
              ),
              Text('Age', style: TextStyle(fontSize: 20)),
              CustomTextFormField(controller: ageController, hintText: '22'),
              Text('Email', style: TextStyle(fontSize: 20)),
              CustomTextFormField(
                controller: emailController,
                hintText: 'example@gmail.com',
              ),
              Text('Password', style: TextStyle(fontSize: 20)),
              CustomTextFormField(
                controller: passwordController,
                hintText: '.......',
              ),
              SizedBox(height: 10),
              CustomMaterialButton(
                name: 'Insert',
                onPressed: () async {
                  OperationOnTables.insert(
                    InsertRequest(
                      id: uid,
                      name: nameController.text,
                      age: ageController.text,
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Insert Success!")),
                  );
                  List<Map<String, dynamic>> data =
                      await OperationOnTables.getData();
                  if (!context.mounted) return;
                  context.push(Routes.userInfo, extra: data);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
