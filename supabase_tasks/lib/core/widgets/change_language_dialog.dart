import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_tasks/features/login/logic/cubits/language_cubit.dart';
import 'package:supabase_tasks/generated/l10n.dart';

class ChangeLanguageDialog extends StatelessWidget {
  const ChangeLanguageDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context).changeLanguage),
      content: Text(AppLocalizations.of(context).selectLanguage),
      actions: [
        TextButton(
          onPressed: () {
            context.read<LanguageCubit>().englishLanguage();
            Navigator.of(context).pop();
          },
          child: Text(AppLocalizations.of(context).english),
        ),
        TextButton(
          onPressed: () {
            context.read<LanguageCubit>().arabicLanguage();
            Navigator.of(context).pop();
          },
          child: Text(AppLocalizations.of(context).arabic),
        ),
      ],
    );
  }
}
