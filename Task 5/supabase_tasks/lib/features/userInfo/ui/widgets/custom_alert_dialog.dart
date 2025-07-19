import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_tasks/core/services/update_request.dart';
import 'package:supabase_tasks/core/utils/app_color.dart';
import 'package:supabase_tasks/features/login/ui/widgets/custom_text_form_field.dart';
import 'package:supabase_tasks/features/userInfo/logic/cubit/data_cubit_cubit.dart';
import 'package:supabase_tasks/generated/l10n.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.data,
  });

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
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
  }
}
