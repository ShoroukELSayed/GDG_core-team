import 'package:marketi_app/core/services/api_services.dart';
import 'package:marketi_app/core/services/register_request.dart';
import 'package:marketi_app/features/auth/logic/register_cubit/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit <RegisterStates> {

  final ApiServices _apiServices ;
  RegisterCubit(this._apiServices) : super(RegisterInitial());


  Future<void> registerUser(RegisterRequest registerRequest) async {
    emit(RegisterLoading());
    try {
      final response = await _apiServices.registerUser(registerRequest);
      emit(RegisterSuccess(response));
    } catch (e) {
      emit(RegisterError(e.toString()));
    }
  }
}