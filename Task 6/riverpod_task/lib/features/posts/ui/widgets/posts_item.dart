import 'package:flutter/material.dart';
import 'package:riverpod_task/features/posts/logic/posts_model.dart';

class PostsItem extends StatelessWidget {
  const PostsItem({super.key, required this.post});
  final PostsModel post;

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
          Text(
            post.id.toString(),
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          Text(
            post.title,
            style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
          ),
          Text(post.body, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
