import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../features/sign_up/data/models/user_sign_up_request_body.dart';
import '../models/supabase_user_model.dart';
import '../helper/supabase_constanc.dart';

class SupabaseDatabase {
  static final SupabaseClient _supabase = Supabase.instance.client;

  static Future<void> insertUserData(
      {required UserSignUpRequestBody userSignUpRequestBody}) async {
    await _supabase
        .from(SupabaseConstanc.usersTable)
        .insert(userSignUpRequestBody.toJson());
  }

  static Future<SupabaseUserResponse> getUserData(
      {required String email}) async {
    Map<String, dynamic> res = await _supabase
        .from(SupabaseConstanc.usersTable)
        .select()
        .eq('email', email)
        .single();
    return SupabaseUserResponse.fromJson(res);
  }
}
