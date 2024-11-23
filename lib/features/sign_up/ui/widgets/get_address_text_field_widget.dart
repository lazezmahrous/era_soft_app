import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_shirt/core/theming/colors.dart';
import 'package:t_shirt/features/sign_up/logic/cubit/sign_up_cubit.dart';

import '../../../../core/constant/app_svgs.dart';
import '../../../../core/global widgets/app_text_form_field.dart';
import '../../logic/cubit/get_address_cubit.dart';
import 'sign_up_text_field.dart';

class GetAddressTextFieldWidget extends StatefulWidget {
  const GetAddressTextFieldWidget({super.key});
  @override
  State<GetAddressTextFieldWidget> createState() =>
      _GetAddressTextFieldWidgetState();
}

class _GetAddressTextFieldWidgetState extends State<GetAddressTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<GetAddressCubit, GetAddressState>(
      listener: (context, state) {
        state.whenOrNull(success: () {
          context.read<SignUpCubit>().addressController.text =
              context.read<GetAddressCubit>().adressController.text;
        });
      },
      child: SignUpTextField(
        iconPath: AppSvgs.marker,
        appTextFormField: AppTextFormField(
          controller: context.read<GetAddressCubit>().adressController,
          hintText: 'address',
          suffixIcon: IconButton(
            onPressed: () {
              context.read<GetAddressCubit>().emitGetAdressStates();
            },
            icon: SvgPicture.asset(
              AppSvgs.navigation,
              color: ColorsManager.mainBlue,
            ),
          ),
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid Phone Number';
            }
            return null;
          },
        ),
      ),
    );
  }
}
