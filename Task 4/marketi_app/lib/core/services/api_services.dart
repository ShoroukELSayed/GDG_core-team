import 'package:dio/dio.dart';
import 'package:marketi_app/core/services/login_request.dart';
import 'package:marketi_app/core/services/login_response.dart';
import 'package:marketi_app/core/services/register_request.dart';
import 'package:marketi_app/core/services/reset_pass_request.dart';

class ApiServices {
  final Dio dio = Dio();
  final String baseUrl = "https://marketi-app.onrender.com/api/v1/auth";
  Future<String> registerUser(RegisterRequest registerModel) async {
    try {
      final response = await dio.post(
        "$baseUrl/signUp",
        data: registerModel.toJson(),
      );
      return response.data["message"];
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<dynamic> loginUser(LoginRequest loginModel) async {
    try {
      final response = await dio.post(
        "$baseUrl/signIn",
        data: loginModel.toJson(),
      );
      return LoginResponse.fromJson(response.data);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<String> forgotPassword(String email) async {
    try {
      final response = await dio.post(
        "$baseUrl/sendPassEmail",
        data: {"email": email},
      );
      return response.data["message"];
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  Future<String> verifyCode(String email, String code) async {
    try {
      final response = await dio.post(
        "$baseUrl/activeResetPass",
        data: {"email": email, "code": code},
      );
      return response.data["message"];
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  Future<String> resetPassword(ResetPassRequest resetPassRequest) async {
    try {
      final response = await dio.post(
        "$baseUrl/resetPassword",
        data: resetPassRequest.toJson(),
      );
      return response.data["message"];
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
