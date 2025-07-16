abstract class DeleteStates {}

class DeleteInitial extends DeleteStates {}

class DeleteLoading extends DeleteStates {}

class DeleteSuccessWithData extends DeleteStates {
  final List<Map<String, dynamic>> data;
  DeleteSuccessWithData(this.data);
}

class DeleteError extends DeleteStates {
  final String error;
  DeleteError(this.error);
}
