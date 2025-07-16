import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_task/core/services/insert_request.dart';
import 'package:supabase_task/core/services/update_request.dart';

class OperationOnTables {
  static insert(InsertRequest insertRequest) async {
    try {
      final response = await Supabase.instance.client.from('students').insert({
        "name": insertRequest.name,
        "age": insertRequest.age,
        "email": insertRequest.email,
        "password": insertRequest.password,
      });
      if (response.user != null) {
        log('Done!');
      } else {
        log('insert error');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  static getData() async {
    try {
      final response = await Supabase.instance.client
          .from('students')
          .select("id,name,email,password");
      if (response.isNotEmpty) {
        log(response.toString());
        return response;
      } else {
        log('getData error');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  update({required UpdateRequest updateRequest}) async {
    try {
      final response = await Supabase.instance.client
          .from('students')
          .update({
            "name": updateRequest.name,
            "email": updateRequest.email,
            "password": updateRequest.password,
          })
          .eq("id", updateRequest.id);
      if (response != null) {
        return response;
      } else {
        log('update error');
      }
    } catch (e) {
      log(e.toString());
    }
  }

  delete({required String id}) async {
    try {
      final response = await Supabase.instance.client
          .from('students')
          .delete()
          .eq("id", id);
      if (response != null) {
        return response;
      } else {
        log('update error');
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
