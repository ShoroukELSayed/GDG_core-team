abstract class UpdateStates {}

class UpdateInitial extends UpdateStates {}

class UpdateLoading extends UpdateStates {}

class UpdateSuccessWithData extends UpdateStates {
  final List<Map<String, dynamic>> data;
  UpdateSuccessWithData(this.data);
}

class UpdateErorr extends UpdateStates {
  final String erorr;

  UpdateErorr( this.erorr);
}
