import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/features/auth/logic/forgot_pass_cubit/forgot_pass_states.dart';

class ForgotPassCubit extends Cubit<ForgotPassStates> {
  final ApiServices _apiServices;
  ForgotPassCubit(this._apiServices) : super(ForgotPassInitial());
  void sendForgotPasswordEmail(String email) async {
    emit(ForgotPassLoading());
    try {
      await _apiServices.forgotPassword(email);
      emit(ForgotPassSuccess("Reset code sent to $email"));
    } catch (e) {
      emit(ForgotPassError("Failed to send reset code"));
    }
  }
}
