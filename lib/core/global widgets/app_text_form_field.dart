// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/theming/colors.dart';
import '../../features/sign_up/logic/cubit/sign_up_cubit.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final FocusNode? focusNode;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;

  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final bool? isPhoneNumber;
  final double? cursorWidth;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fieldBackGroundColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int? maxLength;
  final int? maxLines;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusNode,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.isPhoneNumber = false,
    this.cursorWidth,
    this.suffixIcon,
    this.prefixIcon,
    this.fieldBackGroundColor,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.validator,
    this.maxLength,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: true,
      keyboardType: keyboardType,
      maxLength: maxLength,
      maxLines: maxLines,
      decoration: InputDecoration(
        isDense: false,
        enabled: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
        hintStyle: hintStyle ?? TextStyles.font13DarkGrayRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: isPhoneNumber!
            ? CountryCodePicker(
                onInit: (code) {
                  context.read<SignUpCubit>().countryCode = code!.dialCode!;
                },
                onChanged: (code) {
                  context.read<SignUpCubit>().countryCode = code.dialCode!;
                },
                initialSelection: 'EG',
                favorite: const ['+20', 'EG'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
                backgroundColor: Colors.amber,
                boxDecoration: const BoxDecoration(
                  color: ColorsManager.mainWhite,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(10),
              )
            : prefixIcon,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font16DarkSemiBold,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
