import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../helpers/shared_pref_helper.dart';

class SupabaseAuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<AuthResponse> signupWithEmailAndPassword(
      {required String password, required String email}) async {
    return await _supabase.auth.signUp(
      password: password,
      email: email,
    );
  }

  Future<AuthResponse> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    return await _supabase.auth
        .signInWithPassword(password: password, email: email);
  }

  Future<void> signOut() async {
    await SharedPrefHelper.clearAllSecuredData();
    await _supabase.auth.signOut();
  }

  String? getUserEmail() {
    final session = _supabase.auth.currentSession;
    return session!.user.email;
  }
}
