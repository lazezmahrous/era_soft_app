import 'package:bloc/bloc.dart';
import 'package:t_shirt/core/helpers/shared_pref_constans.dart';
import 'package:t_shirt/core/helpers/shared_pref_helper.dart';
import 'package:t_shirt/features/login/data/models/user_login_request_body.dart';
import 'package:t_shirt/features/login/data/repos/login_repo.dart';
import 'package:t_shirt/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

import '../../../../core/networking/local_database/helper/hive_helper.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());

    try {
      await _loginRepo
          .login(UserLoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ))
          .then((res) {
        if (res == 'success') {
          emit(const LoginState.success());
        } else {
          print(res);
          emit(LoginState.error(error: res));
        }
      });
    } catch (e) {
      emit(LoginState.error(error: e.toString()));
    }
  }

  Future<void> saveToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
  }

  // Future<void> saveUserData(UserDataModel userData, String token) async {
  //   print(userData.userEmail);
  //   await HiveHeleper.saveUserData(userData);
  // }
}
