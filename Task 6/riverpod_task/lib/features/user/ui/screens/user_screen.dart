import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_task/features/user/logic/user_api.dart';
import 'package:riverpod_task/features/user/logic/user_state.dart';
import 'package:riverpod_task/features/user/ui/widgets/user_item.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: userState.when(
        initial: () => Center(child: Text('Wait to load')),
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (users) => ListView.builder(
          itemBuilder: (context, index) => UserItem(user: users[index]),
          itemCount: users.length,
        ),
        error: (error) => Center(child: Text(error)),
      ),
    );
  }
}

final userNotifierProvider = StateNotifierProvider<UserNotifier, UserState>((
  ref,
) {
  final apiServices = UserApi(Dio());
  return UserNotifier(apiServices)..fetchUser();
});
