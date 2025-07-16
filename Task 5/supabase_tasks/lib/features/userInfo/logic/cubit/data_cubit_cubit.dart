import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/services/insert_request.dart';
import '../../../../core/services/operation_on_tables.dart';
import '../../../../core/services/update_request.dart';

part 'data_cubit_state.dart';

class DataCubit extends Cubit<DataCubitState> {
  final OperationOnTables _OperationOnTables;
  DataCubit(this._OperationOnTables) : super(DataCubitInitial());
  void getData() async {
    emit(DataCubitLoading());
    try {
      final data = await _OperationOnTables.getData();
      emit(DataCubitSuccess(data));
    } catch (e) {
      emit(DataCubitError("Failed to fetch data"));
    }
  }

  void insertData(InsertRequest insertRequest) async {
    emit(DataCubitLoading());
    try {
      await _OperationOnTables.insert(insertRequest);
      final data = await _OperationOnTables.getData();
      emit(DataCubitSuccess(data));
    } catch (e) {
      emit(DataCubitError("Failed to insert data"));
    }
  }

  //delete
  void deleteData(String id) async {
    emit(DataCubitLoading());
    try {
      await _OperationOnTables.delete(id: id);
      final data = await _OperationOnTables.getData();
      emit(DataCubitSuccess(data));
    } catch (e) {
      emit(DataCubitError("Failed to delete data"));
    }
  }

  //update
  void updateData(UpdateRequest updateRequest) async {
    emit(DataCubitLoading());
    try {
      await _OperationOnTables.update(updateRequest: updateRequest);
      final updatedData = await _OperationOnTables.getData();
      emit(DataCubitSuccess(updatedData));
    } catch (e) {
      emit(DataCubitError("Failed to update data"));
    }
  }
}
