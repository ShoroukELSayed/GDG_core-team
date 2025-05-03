abstract class LoginStates{}
class LoginInitial extends LoginStates{}
class LoginLoading extends LoginStates{}
class LoginSuccess extends LoginStates{
  final String message;
  LoginSuccess(this.message);
}
class LoginError extends LoginStates{
  final String errorMessage;
  LoginError(this.errorMessage);
}