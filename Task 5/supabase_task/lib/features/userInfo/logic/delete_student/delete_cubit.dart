import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_task/core/services/operation_on_tables.dart';
import 'delete_states.dart';

class DeleteCubit extends Cubit<DeleteStates> {
  final OperationOnTables _operation;
  DeleteCubit(this._operation) : super(DeleteInitial());

  void deleteStudent(String id) async {
    emit(DeleteLoading());
    try {
      await _operation.delete(id:id); 
      final newData = await OperationOnTables.getData();
      emit(DeleteSuccessWithData(newData));
    } catch (e) {
      emit(DeleteError("Delete failed"));
    }
  }
}
