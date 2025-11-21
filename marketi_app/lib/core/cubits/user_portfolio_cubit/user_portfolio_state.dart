
import 'package:marketi_app/core/models/user_model.dart';

sealed class UserStates {}

final class UserInitial extends UserStates {}
final class GetDataSuccess extends UserStates {
  final UserModel user;
  GetDataSuccess({required this.user});
}
final class GetDataError extends UserStates {
  final String message;
  GetDataError({required this.message});
}
final class GetDataLoading extends UserStates {}
final class UpdateDataLoading extends UserStates {}
final class UpdateDataSuccess extends UserStates {
  final String message;
  UpdateDataSuccess({required this.message});
}
final class UpdateDataError extends UserStates {
  final String message;
  UpdateDataError({required this.message});
}

final class UploadProfilePic extends UserStates {}

final class UploadProfilePicErorr extends UserStates {
  final String message;
  UploadProfilePicErorr({required this.message});
}
