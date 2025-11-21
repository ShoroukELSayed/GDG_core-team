import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_tasks/core/utils/app_color.dart';
import 'package:supabase_tasks/features/userInfo/logic/cubit/data_cubit_cubit.dart';
import 'package:supabase_tasks/features/userInfo/ui/widgets/custom_alert_dialog.dart';
import 'package:supabase_tasks/generated/l10n.dart';

class DataActionsRow extends StatelessWidget {
  const DataActionsRow({
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return CustomAlertDialog(nameController: nameController, emailController: emailController, passwordController: passwordController, data: data);
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
        ),
      ],
    );
  }
}
