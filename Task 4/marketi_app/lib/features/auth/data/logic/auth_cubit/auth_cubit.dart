import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:marketi_app/core/api/end_points.dart';
import 'package:marketi_app/core/cache/cache_helper.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/core/errors/exceptions.dart';
import 'package:marketi_app/features/auth/data/models/active_reset_pass_models.dart';
import 'package:marketi_app/features/auth/data/models/forgot_pass_models.dart';
import 'package:marketi_app/features/auth/data/models/login_models.dart';
import 'package:marketi_app/features/auth/data/models/sign_up_models.dart';
import 'package:marketi_app/features/auth/data/models/reset_pass_request.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final ApiServices _apiServices;
  AuthCubit(this._apiServices) : super(AuthInitial());

  Future<void> registerUser(SignUpRequestModel registerRequest) async {
    emit(SignUpLoading());
    try {
      final response = await _apiServices.signUpUser(registerRequest);
      emit(SignUpSuccess(response: response));
    } on ServerException catch (e) {
      emit(SignUpError(errMessage: e.errModel.message));
    }
  }

  Future<void> loginUser(LoginRequestModel loginRequest) async {
    emit(LoginLoading());
    try {
      final response = await _apiServices.loginUser(loginRequest);
      final decodedToken = JwtDecoder.decode(response.token);
      CacheHelper.setData(key: ApiKey.token, value: response.token);
      CacheHelper.setData(key: ApiKey.id, value: decodedToken['id']);
      CacheHelper.setData(key: ApiKey.name, value: response.user.name);
      CacheHelper.setData(key: ApiKey.email, value: response.user.email);
      emit(LoginSuccess(response: response));
    } on ServerException catch (e) {
      emit(LoginError(errMessage: e.errModel.message));
    }
  }

  Future<void> sendForgotPasswordEmail(ForgotPassRequest email) async {
    emit(ForgotPassLoading());
    try {
      final response = await _apiServices.forgotPassword(email);
      emit(ForgotPassSuccess(response: response));
    } on ServerException catch (e) {
      emit(ForgotPassError(errMessage: e.errModel.message));
    }
  }

  Future<void> resetPassword(ResetPassRequestModel resetPassRequest) async {
    emit(ResetPasswordLoading());
    try {
      final response = await _apiServices.resetPassword(resetPassRequest);
      emit(ResetPasswordSuccess(response: response));
    } on ServerException catch (e) {
      emit(ResetPasswordError(errMessage: e.errModel.message));
    }
  }

  Future<void> verifyCode(ActiveResetPassRequest request) async {
    emit(ActiveResetPassLoading());
    try {
      final response = await _apiServices.activeResetPass(request);
      emit(ActiveResetPassSuccess(response: response));
    } on ServerException catch (e) {
      emit(ActiveResetPassError(errMessage: e.errModel.message));
    }
  }
}
