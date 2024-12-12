import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_shirt/core/helpers/extensions.dart';

import '../../../../core/helpers/show_snack_bar.dart';
import '../../../../core/routing/routers.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatefulWidget {
  const LoginBlocListener({super.key});
  @override
  State<LoginBlocListener> createState() => _LoginBlocListenerState();
}

class _LoginBlocListenerState extends State<LoginBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (messageError) {
            switch (messageError) {
              case 'invalid_credentials':
                showSnackBarEror(context, 'Email Or Password Wrong');
                break;
              default:
            }
          },
          success: () async {
            context.pushNamedAndRemoveUntil(
              Routes.bottomNavBar,
              arguments: null,
              predicate: (route) => false,
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
