import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/core/services/reset_pass_request.dart';
import 'package:marketi_app/features/auth/logic/reset_pass_cubit/reset_pass_states.dart';

class ResetPassCubit extends Cubit<ResetPasswordStates> {
  final ApiServices _apiServices;
  ResetPassCubit(this._apiServices) : super(ResetPasswordInitial());

  void resetPassword(ResetPassRequest resetPassRequest) async {
    emit(ResetPasswordLoading());
    try {
      final response = await _apiServices.resetPassword(resetPassRequest);
      emit(ResetPasswordSuccess(response));
    } catch (e) {
      emit(ResetPasswordError("Failed to reset password"));
    }
  }
}