abstract class ForgotPassStates {}

class ForgotPassInitial extends ForgotPassStates {}

class ForgotPassLoading extends ForgotPassStates {}

class ForgotPassSuccess extends ForgotPassStates {
  final String message;
  ForgotPassSuccess(this.message);
}

class ForgotPassError extends ForgotPassStates {
  final String error;
  ForgotPassError(this.error);
}
