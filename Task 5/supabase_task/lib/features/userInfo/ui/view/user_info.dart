import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_task/core/services/operation_on_tables.dart';
import 'package:supabase_task/core/utils/app_color.dart';
import 'package:supabase_task/core/widgets/custom_app_bar.dart';
import 'package:supabase_task/features/userInfo/logic/delete_student/delete_cubit.dart';
import 'package:supabase_task/features/userInfo/logic/delete_student/delete_states.dart';
import 'package:supabase_task/features/userInfo/logic/update_data/update_cubit.dart';
import 'package:supabase_task/features/userInfo/logic/update_data/update_states.dart';
import 'package:supabase_task/features/userInfo/ui/widgets/student_item.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key, required this.data});
  final List<Map<String, dynamic>> data;

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  late List<Map<String, dynamic>> students;

  @override
  void initState() {
    super.initState();
    students = List.from(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: CustomAppBar(title: 'Student Information'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<UpdateCubit>(
            create: (context) => UpdateCubit(OperationOnTables()),
          ),
          BlocProvider<DeleteCubit>(
            create: (context) => DeleteCubit(OperationOnTables()),
          ),
        ],
        child: BlocListener<DeleteCubit, DeleteStates>(
          listener: (context, state) {
            if (state is DeleteSuccessWithData) {
              setState(() {
                students = state.data;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Deleted successfully")),
              );
            }
          },
          child: BlocListener<UpdateCubit, UpdateStates>(
            listener: (context, state) {
              if (state is UpdateSuccessWithData) {
                setState(() {
                  students = state.data;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Update Success!")),
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Stack(
                children: [
                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: students.length,
                    itemBuilder: (context, index) {
                      return StudentItem(data: students[index]);
                    },
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    child: FloatingActionButton(
                      onPressed: () {
                        context.pop();
                      },
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
