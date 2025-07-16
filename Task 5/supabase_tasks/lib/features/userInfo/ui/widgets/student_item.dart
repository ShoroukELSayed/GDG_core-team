import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supabase_tasks/core/services/update_request.dart';
import 'package:supabase_tasks/core/utils/app_color.dart';
import 'package:supabase_tasks/features/login/ui/widgets/custom_text_form_field.dart';
import 'package:supabase_tasks/features/userInfo/logic/cubit/data_cubit_cubit.dart';
import 'package:supabase_tasks/features/userInfo/logic/delete_student/delete_cubit.dart';
import 'package:supabase_tasks/features/userInfo/logic/update_data/update_cubit.dart';
import 'package:supabase_tasks/features/userInfo/logic/update_data/update_states.dart';
import 'package:supabase_tasks/features/userInfo/ui/widgets/info_field.dart';
import 'package:supabase_tasks/generated/l10n.dart';

class StudentItem extends HookWidget {
  const StudentItem({super.key, required this.data});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController(text: data["name"]);
    final emailController = useTextEditingController(text: data["email"]);
    final passwordController = useTextEditingController(text: data["password"]);
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
                        title: Text(
                          AppLocalizations.of(context).updateInformation,
                        ),
                        content: Column(
                          spacing: 5,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomTextFormField(
                              controller: nameController,
                              hintText: AppLocalizations.of(context).name,
                            ),
                            CustomTextFormField(
                              controller: emailController,
                              hintText: AppLocalizations.of(context).email,
                            ),
                            CustomTextFormField(
                              controller: passwordController,
                              hintText: AppLocalizations.of(context).password,
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
                              context.read<DataCubit>().updateData(
                                updateResponse,
                              );

                              Navigator.of(context).pop();
                            },
                            color: AppColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              AppLocalizations.of(context).updateInformation,
                            ),
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
                  context.read<DataCubit>().deleteData(data["id"]);
                },
                icon: Text(
                  AppLocalizations.of(context).delete,
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                // icon: Icon(Icons.edit_note, color: AppColors.primaryColor, size: 30),
                // icon: Icon(Icons.delete, color: Colors.red, size: 30),
              ),
            ],
          ),
          InfoField(title: 'Name : ${data["name"]} '),
          InfoField(title: 'Email : ${data["email"]} '),
          InfoField(title: 'Password : ${data["password"]} '),
        ],
      ),
    );
  }
}
