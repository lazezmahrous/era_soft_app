import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_shirt/core/helpers/show_snack_bar.dart';
import 'package:t_shirt/features/get_product_data/data/logic/pay/pay_cubit.dart';

class PayBlocListener extends StatefulWidget {
  const PayBlocListener({super.key});

  @override
  State<PayBlocListener> createState() => _PayBlocListenerState();
}

class _PayBlocListenerState extends State<PayBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<PayCubit, PayState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (error) {
            showSnackBarEror(
              context,
              '${error.errMessage} available ${error.stock}',
            );
          },
          success: (success) {
            showSnackBarBlue(
              context,
              '${success.message}',
            );
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
