import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/features/posts/logic/posts_api.dart';
import 'package:riverpod_task/features/posts/logic/posts_model.dart';
import 'package:riverpod_task/features/posts/ui/widgets/posts_item.dart';

class PostsScreen extends ConsumerWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsAsyncValue = ref.watch(postsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: postsAsyncValue.when(
        data: (posts) => ListView.builder(
          itemBuilder: (context, index) => PostsItem(post: posts[index]),
          itemCount: posts.length,
        ),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

final postsProvider = FutureProvider<List<PostsModel>>((ref) async {
  final PostsApi postsApi = PostsApi(Dio());
  return await postsApi.fetchPosts();
});
