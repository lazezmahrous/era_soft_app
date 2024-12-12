import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_shirt/features/adding_product/logic/adding_product_cubit.dart';

import '../../../../core/helpers/show_snack_bar.dart';

class AddingProductListner extends StatefulWidget {
  const AddingProductListner({super.key});

  @override
  State<AddingProductListner> createState() => _AddingProductListnerState();
}

class _AddingProductListnerState extends State<AddingProductListner> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddingProductCubit, AddingProductState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {
            return const SizedBox.shrink();
          },
          failure: () {
            showSnackBarEror(
              context,
              'failure',
            );
          },
          succses: () {
            showSnackBarBlue(
              context,
              'Success ',
            );
          },
        );
      },
    );
  }
}
