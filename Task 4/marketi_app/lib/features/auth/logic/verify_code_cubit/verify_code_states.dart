abstract class VerifyCodeStates{}
class VerifyCodeStatesInitial extends VerifyCodeStates{}
class VerifyCodeStatesLoading extends VerifyCodeStates{}
class VerifyCodeStatesSuccess extends VerifyCodeStates{
  final String message;
  VerifyCodeStatesSuccess(this.message);
}
class VerifyCodeStatesError extends VerifyCodeStates{
  final String error;
  VerifyCodeStatesError(this.error);
}