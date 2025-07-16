import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_task/core/services/operation_on_tables.dart';
import 'package:supabase_task/core/services/update_request.dart';
import 'package:supabase_task/features/userInfo/logic/update_data/update_states.dart';

class UpdateCubit extends Cubit<UpdateStates> {
  final OperationOnTables _operationOnTables;
  UpdateCubit(this._operationOnTables) : super(UpdateInitial());
  void updateData(UpdateRequest updateRequest) async {
    emit(UpdateLoading());
    try {
      await _operationOnTables.update(updateRequest: updateRequest);
      final updatedData = await OperationOnTables.getData(); 
      emit(UpdateSuccessWithData(updatedData)); 
    } catch (e) {
      emit(UpdateErorr("erorr"));
    }
  }
}
