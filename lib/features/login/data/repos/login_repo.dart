import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:t_shirt/core/networking/supabase/repos/supabase_database.dart';

import '../../../../core/networking/local_database/helper/hive_helper.dart';
import '../../../../core/helpers/shared_pref_constans.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/networking/local_database/models/user_model.dart';
import '../../../../core/networking/supabase/repos/supabase_auth_service.dart';
import '../../../../core/networking/supabase/models/supabase_user_model.dart';
import '../models/user_login_request_body.dart';

class LoginRepo {
  final SupabaseAuthService _authService;
  LoginRepo(this._authService);

  Future<String> login(UserLoginRequestBody userLoginRequestBody) async {
    try {
      AuthResponse response = await _authService.loginWithEmailAndPassword(
        email: userLoginRequestBody.email,
        password: userLoginRequestBody.password,
      );
      if (response.user != null) {
        final session = response.session;
        if (session?.accessToken != null) {
          // save user token
          await _saveToken(session!.accessToken);
          // get user data from supabase
          SupabaseUserResponse supabaseUser =
              await SupabaseDatabase.getUserData(email: session.user.email!);
          // save user data on local database
          await HiveHeleper.saveUserData(
            UserModel(
              name: supabaseUser.userName,
              email: supabaseUser.email,
              address: supabaseUser.address,
              phoneNumber: supabaseUser.phoneNumber,
            ),
          );
        }
        return 'success';
      }
    } catch (e) {
      if (e is AuthException) {
        print('Error Code: ${e.code}');
        return e.code!;
      } else {
        print('Unexpected Error: $e');
        return 'unexpected_error';
      }
    }
    return 'error';
  }

  Future<void> _saveToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  }
}
