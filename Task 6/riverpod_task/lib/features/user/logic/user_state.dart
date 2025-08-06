import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_task/features/user/logic/user_api.dart';
import 'package:riverpod_task/features/user/logic/user_model.dart';
part 'user_state.freezed.dart';

@freezed
sealed class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.error(String message) = UserError;
  const factory UserState.loaded(List<UserModel> users) = UserLoaded;
}

class UserNotifier extends StateNotifier<UserState> {
  UserNotifier(this.apiServices) : super(UserInitial());
  final UserApi apiServices;
  Future<void> fetchUser() async {
    state = UserLoading();
    try {
      final users = await apiServices.fetchUser();
      state = UserLoaded(users);
    } catch (e) {
      state = UserError(e.toString());
    }
  }
}
