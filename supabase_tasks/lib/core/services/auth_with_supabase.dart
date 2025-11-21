import 'dart:developer';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthWithSupabase {
  static register({required String email, required String password}) async {
    try {
      final response = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );
      if (response.user != null) {
        log('Done!');
      } else {
        log('error');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  static login({required String email, required String password}) async {
    try {
      final response = await Supabase.instance.client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (response.user != null) {
        log('Done!');
      } else {
        log('error');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
