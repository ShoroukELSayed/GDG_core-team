import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supabase_tasks/features/userInfo/ui/widgets/data_actions_row.dart';
import 'package:supabase_tasks/features/userInfo/ui/widgets/info_field.dart';

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
          DataActionsRow(nameController: nameController, emailController: emailController, passwordController: passwordController, data: data),
          InfoField(title: 'Name : ${data["name"]} '),
          InfoField(title: 'Email : ${data["email"]} '),
          InfoField(title: 'Password : ${data["password"]} '),
        ],
      ),
    );
  }
}
