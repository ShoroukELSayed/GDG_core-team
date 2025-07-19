import 'package:flutter/material.dart';
import 'package:supabase_tasks/features/userInfo/ui/widgets/student_item.dart';

class StudentListView extends StatelessWidget {
  const StudentListView({super.key, required this.students});
  final List<Map<String, dynamic>> students;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: students.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return StudentItem(data: students[index]);
        },
      ),
    );
  }
}
