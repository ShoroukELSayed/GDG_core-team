import 'package:dio/dio.dart';
import 'package:riverpod_task/features/posts/logic/posts_model.dart';

class PostsApi {
  final Dio dio;
  PostsApi(this.dio);
  final String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<PostsModel>> fetchPosts() async {
    try {
      final response = await dio.get(baseUrl);
      if (response.statusCode == 200) {
        final jsonData = response.data;
        final posts = (jsonData as List)
            .map((user) => PostsModel.fromJson(user as Map<String, dynamic>))
            .toList();

        return posts;
      } else {
        throw Exception('Failed to load Posts');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
