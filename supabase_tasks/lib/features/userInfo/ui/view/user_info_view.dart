import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_tasks/core/widgets/custom_app_bar.dart';
import 'package:supabase_tasks/features/userInfo/logic/cubit/data_cubit_cubit.dart';
import 'package:supabase_tasks/features/userInfo/ui/widgets/student_list_view.dart';
import 'package:supabase_tasks/generated/l10n.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<DataCubit>().getData();
        },
        child: Icon(Icons.refresh, color: Colors.white, size: 30),
      ),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: CustomAppBar(
          title: AppLocalizations.of(context).studentInformation,
        ),
      ),
      body: BlocBuilder<DataCubit, DataCubitState>(
        builder: (context, state) {
          if (state is DataCubitLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is DataCubitError) {
            return Center(child: Text(state.error));
          } else if (state is DataCubitSuccess) {
            if (state.data.isEmpty) {
              return Center(child: Text(AppLocalizations.of(context).noData));
            }
            return StudentListView(students: (state.data));
          }
          return Center(child: Text('noData'));
        },
      ),
    );
  }

  
}
