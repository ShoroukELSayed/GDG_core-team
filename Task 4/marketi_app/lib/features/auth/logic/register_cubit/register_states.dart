abstract class RegisterStates {}

class RegisterInitial extends RegisterStates {}

class RegisterLoading extends RegisterStates {}

class RegisterSuccess extends RegisterStates {
  final String message;
  RegisterSuccess(this.message);
}

class RegisterError extends RegisterStates {
  final String errorMessage;
  RegisterError(this.errorMessage);
}
