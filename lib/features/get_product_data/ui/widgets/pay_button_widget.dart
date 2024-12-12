import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/global%20widgets/app_text_form_field.dart';
import 'package:t_shirt/features/get_product_data/data/logic/make_order/make_order_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/logic/pay/pay_cubit.dart';
import 'package:t_shirt/features/get_product_data/ui/widgets/pay_info_widget.dart';
import 'package:t_shirt/features/home/ui/screens/home_screen.dart';

import '../../../../core/global widgets/app_gradient_button.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';

class PayButtonWidget extends StatefulWidget {
  const PayButtonWidget({super.key});

  @override
  State<PayButtonWidget> createState() => _PayButtonWidgetState();
}

class _PayButtonWidgetState extends State<PayButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: AppGradientButton(
              size: Size(double.infinity, 40.h),
              gradient: LinearGradient(colors: [
                ColorsManager.mainOrange,
                ColorsManager.mainOrange,
              ]),
              text: 'Pay Now',
              onPressed: () async {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const PayInfoWidget();
                  },
                );
              },
            ),
          ),
          horizontalSpace(10),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              label: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
          )
        ],
      ),
    );
  }
}
