part of 'auth_cubit.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

class SignUpLoading extends AuthState {}

class SignUpSuccess extends AuthState {
  final SignUpResponseModel response;
  SignUpSuccess({required this.response});
}

class SignUpError extends AuthState {
  final String errMessage;
  SignUpError({required this.errMessage});
}

class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {
  final LoginResponseModel response;
  LoginSuccess({required this.response});
}

class LoginError extends AuthState {
  final String errMessage;
  LoginError({required this.errMessage});
}

class ForgotPassInitial extends AuthState {}

class ForgotPassLoading extends AuthState {}

class ForgotPassSuccess extends AuthState {
  final ForgotPassResponse response;
  ForgotPassSuccess({required this.response});
}

class ForgotPassError extends AuthState {
  final String errMessage;
  ForgotPassError({required this.errMessage});
}

class ResetPasswordLoading extends AuthState {}

class ResetPasswordSuccess extends AuthState {
  final ResetPassResponseModel response;
  ResetPasswordSuccess({required this.response});
}

class ResetPasswordError extends AuthState {
  final String errMessage;
  ResetPasswordError({required this.errMessage});
}

class ActiveResetPassLoading extends AuthState {}

class ActiveResetPassSuccess extends AuthState {
  final ActiveResetPassResponse response;
  ActiveResetPassSuccess({required this.response});
}

class ActiveResetPassError extends AuthState {
  final String errMessage;
  ActiveResetPassError({required this.errMessage});
}
