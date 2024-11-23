import 'package:flutter/material.dart';
import 'package:t_shirt/core/di/dependency_injection.dart';
import 'package:t_shirt/features/sign_up/logic/cubit/get_address_cubit.dart';

import '../../../../core/constant/app_svgs.dart';
import '../../../../core/global widgets/app_text_form_field.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/cubit/sign_up_cubit.dart';
import 'get_address_text_field_widget.dart';
import 'sign_up_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpFromWidget extends StatefulWidget {
  const SignUpFromWidget({super.key});
  @override
  State<SignUpFromWidget> createState() => _SignUpFromWidgetState();
}

class _SignUpFromWidgetState extends State<SignUpFromWidget> {
  bool isPasswordIsObscureText = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          SignUpTextField(
            iconPath: AppSvgs.user,
            appTextFormField: AppTextFormField(
              hintText: 'Full Name',
              controller: context.read<SignUpCubit>().nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid name';
                } else if (value.length < 6) {
                  return 'name is short';
                }
                return null;
              },
            ),
          ),
          verticalSpace(10),
          SignUpTextField(
            iconPath: AppSvgs.at,
            appTextFormField: AppTextFormField(
              controller: context.read<SignUpCubit>().emailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
          ),
          verticalSpace(10),
          SignUpTextField(
            iconPath: AppSvgs.phoneCall,
            appTextFormField: AppTextFormField(
              controller: context.read<SignUpCubit>().phoneController,
              hintText: 'Phone Number',
              isPhoneNumber: true,
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Phone Number';
                }
                return null;
              },
            ),
          ),
          verticalSpace(10),
          // Get Address TextField
          BlocProvider(
            create: (context) => getIt<GetAddressCubit>(),
            child: const GetAddressTextFieldWidget(),
          ),
          verticalSpace(10),
          SignUpTextField(
            iconPath: AppSvgs.passwordLock,
            appTextFormField: AppTextFormField(
              controller: context.read<SignUpCubit>().passwordController,
              hintText: 'Password',
              isObscureText: isPasswordIsObscureText,
              maxLines: 1,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordIsObscureText = !isPasswordIsObscureText;
                  });
                },
                child: Icon(
                  isPasswordIsObscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: ColorsManager.secondGray,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
                return null;
              },
            ),
          ),
          verticalSpace(10),
          SignUpTextField(
            iconPath: AppSvgs.passwordLock,
            appTextFormField: AppTextFormField(
              controller:
                  context.read<SignUpCubit>().passwordConfirmationController,
              hintText: 'Confirm Password',
              isObscureText: isPasswordIsObscureText,
              maxLines: 1,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordIsObscureText = !isPasswordIsObscureText;
                  });
                },
                child: Icon(
                  isPasswordIsObscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: ColorsManager.secondGray,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid password';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
