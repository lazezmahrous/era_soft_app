import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/di/dependency_injection.dart';
import 'package:t_shirt/core/global%20widgets/app_gradient_button.dart';
import 'package:t_shirt/core/global%20widgets/app_loading.dart';
import 'package:t_shirt/core/global%20widgets/app_text_form_field.dart';
import 'package:t_shirt/core/helpers/spacing.dart';
import 'package:t_shirt/features/get_product_data/data/logic/pay/pay_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/models/pay/pay_user_data.dart';
import 'package:t_shirt/features/home/ui/screens/home_screen.dart';

import '../../data/logic/make_order/make_order_cubit.dart';

class PayInfoWidget extends StatelessWidget {
  const PayInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PayCubit>()..emitGetUserInfoStates(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<PayCubit, PayState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox();
                },
                initial: () {
                  return const SizedBox.shrink();
                },
                getUserDataLoading: () {
                  return const AppLoading();
                },
                getUserDataSuccess: (success) {
                  return Column(
                    children: [
                      const Text('Confirm Information'),
                      verticalSpace(20),
                      AppTextFormField(
                        hintText: 'Name',
                        controller: context.read<PayCubit>().nameController,
                      ),
                      AppTextFormField(
                        hintText: 'Address',
                        controller: context.read<PayCubit>().addressController,
                      ),
                      AppTextFormField(
                        hintText: 'Phone Number',
                        controller:
                            context.read<PayCubit>().phoneNumberController,
                      ),
                      verticalSpace(20),
                      AppGradientButton(
                        size: Size(double.infinity, 40.h),
                        text: 'Confirm',
                        onPressed: () async {
                          context.read<MakeOrderCubit>().userInfo = PayUserData(
                            name: context.read<PayCubit>().nameController.text,
                            address:
                                context.read<PayCubit>().addressController.text,
                            phoneNumber: context
                                .read<PayCubit>()
                                .phoneNumberController
                                .text,
                          );
                          context.read<MakeOrderCubit>().size =
                              context.read<PayCubit>().size;
                          context.read<MakeOrderCubit>().productId =
                              context.read<PayCubit>().id.toString();
                          context.read<MakeOrderCubit>().color =
                              context.read<PayCubit>().color;
                          context.read<MakeOrderCubit>().count =
                              context.read<PayCubit>().count;

                          context.read<MakeOrderCubit>().emitMakeOrderStates();

                          // context
                        },
                      ),
                    ],
                  );
                },
                getUserDataFailure: (errMessage) {
                  return Text(errMessage);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
