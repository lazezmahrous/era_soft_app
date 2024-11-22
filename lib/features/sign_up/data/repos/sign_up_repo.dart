import 'dart:math';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:t_shirt/core/networking/local_database/helper/hive_helper.dart';
import 'package:t_shirt/core/networking/local_database/models/user_model.dart';
import 'package:t_shirt/core/networking/supabase/repos/supabase_auth_service.dart';

import '../../../../core/helpers/shared_pref_constans.dart';
import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/networking/supabase/repos/supabase_database.dart';
import '../models/user_sign_up_request_body.dart';

class SignupRepo {
  final SupabaseAuthService _authService;
  SignupRepo(this._authService);

  Future<String> signup(UserSignUpRequestBody signupRequestBody) async {
    try {
      // Sighnup User
      AuthResponse response = await _authService.signupWithEmailAndPassword(
        email: signupRequestBody.email,
        password: signupRequestBody.password,
      );

      // check user sighnup sates
      if (response.user != null) {
        final session = response.session;
        if (session?.accessToken != null) {
          await _saveToken(session!.accessToken);
        }
        // save user on online database
        await SupabaseDatabase.insertUserData(
          userSignUpRequestBody: signupRequestBody,
        );
        // save user on local database
        await HiveHeleper.saveUserData(
          UserModel(
            name: signupRequestBody.userName,
            email: signupRequestBody.email,
            address: signupRequestBody.address,
            phoneNumber: signupRequestBody.phoneNumber,
          ),
        );
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
