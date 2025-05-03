import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/features/auth/logic/verify_code_cubit/verify_code_states.dart';

class VerifyCodeCubit  extends Cubit<VerifyCodeStates>{
  final ApiServices _apiServices;
  VerifyCodeCubit(this._apiServices) : super(VerifyCodeStatesInitial());

  Future<void> verifyCode(String email, String code) async {
    emit(VerifyCodeStatesLoading());
    try {
      final response = await _apiServices.verifyCode(email, code);
      emit(VerifyCodeStatesSuccess(response));
    } catch (e) {
      emit(VerifyCodeStatesError(e.toString()));
    }
  }
}