import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/core/services/login_request.dart';
import 'package:marketi_app/features/auth/logic/login_cubit/login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  final ApiServices _apiServices;
  LoginCubit(this._apiServices) : super(LoginInitial());
  Future<void> loginUser(LoginRequest loginRequest) async {
    emit(LoginLoading());
    try {
      final response = await _apiServices.loginUser(loginRequest);
      emit(LoginSuccess(response.message));
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }
}
