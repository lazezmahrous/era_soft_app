import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:t_shirt/features/get_product_data/data/logic/controller/controller_cubit.dart';

import '../../data/logic/pay/pay_cubit.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return InputQty.int(
      decoration: const QtyDecorationProps(
        qtyStyle: QtyStyle.classic,
        orientation: ButtonOrientation.horizontal,
        btnColor: Colors.black,
        fillColor: Colors.white,
      ),
      onQtyChanged: (val) {
        context.read<ControllerCubit>().count = val;
      },
    );
  }
}
