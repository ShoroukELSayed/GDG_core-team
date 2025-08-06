import 'package:flutter/material.dart';
import 'package:riverpod_task/features/user/logic/user_model.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(),
      ),
      child: Column(
        children: [
          Text(user.name, style: TextStyle(fontSize: 20, color: Colors.blue)),
          Text(user.userName, style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent)),
          Text(user.userEmail, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
