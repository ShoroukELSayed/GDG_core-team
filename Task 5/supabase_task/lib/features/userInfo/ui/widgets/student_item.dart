import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supabase_task/core/services/update_request.dart';
import 'package:supabase_task/core/utils/app_color.dart';
import 'package:supabase_task/features/login/ui/widgets/custom_text_form_field.dart';
import 'package:supabase_task/features/userInfo/logic/delete_student/delete_cubit.dart';
import 'package:supabase_task/features/userInfo/logic/update_data/update_cubit.dart';
import 'package:supabase_task/features/userInfo/logic/update_data/update_states.dart';
import 'package:supabase_task/features/userInfo/ui/widgets/info_field.dart';

class StudentItem extends HookWidget {
  const StudentItem({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: data["name"]);
    final emailController = TextEditingController(text: data["email"]);
    final passwordController = TextEditingController(
      text: data["password"],
    );
    return BlocBuilder<UpdateCubit, UpdateStates>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(),
          ),
          child: Column(
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Update Student'),
                            content: Column(
                              spacing: 5,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomTextFormField(
                                  controller: nameController,
                                  hintText: 'Name',
                                ),
                                CustomTextFormField(
                                  controller: emailController,
                                  hintText: 'Email',
                                ),
                                CustomTextFormField(
                                  controller: passwordController,
                                  hintText: 'Password',
                                ),
                              ],
                            ),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  final updateResponse = UpdateRequest(
                                    id: data["id"],
                                    name: nameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                                  context.read<UpdateCubit>().updateData(
                                    updateResponse,
                                  );
                                  Navigator.of(context).pop();
                                },
                                color: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text('Update'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(
                      Icons.edit_note,
                      color: AppColors.primaryColor,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<DeleteCubit>().deleteStudent(
                        data["id"],
                      );
                    },
                    icon: Icon(Icons.delete, color: Colors.red, size: 30),
                  ),
                ],
              ),
              InfoField(title: 'Name : ${data["name"]} '),
              InfoField(title: 'Email : ${data["email"]} '),
              InfoField(title: 'Password : ${data["password"]} '),
            ],
          ),
        );
      },
    );
  }
}
