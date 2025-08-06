import 'package:dio/dio.dart';
import 'package:riverpod_task/features/user/logic/user_model.dart';

class UserApi {
  final Dio dio;
  final String baseUrl = 'https://jsonplaceholder.typicode.com/users';

  UserApi(this.dio);

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await dio.get(baseUrl);
      if (response.statusCode == 200) {
        final jsonData = response.data;
        final users = (jsonData as List)
            .map((user) => UserModel.fromJson(user as Map<String, dynamic>))
            .toList();

        return users;
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
