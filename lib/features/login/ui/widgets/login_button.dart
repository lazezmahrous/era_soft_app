import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global widgets/app_gradient_button.dart';
import '../../../../core/global widgets/app_loading.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      return state.maybeWhen(
        orElse: () {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: AppGradientButton(
              size: Size(double.infinity, 45.h),
              text: 'Login',
              onPressed: () async {
                if (context
                    .read<LoginCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  context.read<LoginCubit>().emitLoginStates();
                }
              },
            ),
          );
        },
        loading: () {
          return const AppLoading();
        },
      );
    });
  }
}
