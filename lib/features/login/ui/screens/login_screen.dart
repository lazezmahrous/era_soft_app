import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../core/global widgets/app_back_button.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/dont_have_account.dart';
import '../widgets/login_bloc_listener.dart';
import '../widgets/login_button.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.onBoardingLogo,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyles.font32SemiBold,
                  ),
                ],
              ),
              verticalSpace(10),
              const LoginForm(),
              verticalSpace(30),
              const LoginButton(),
              verticalSpace(20),
              const DontHaveAccount(),
              const LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
