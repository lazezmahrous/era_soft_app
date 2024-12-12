import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/theming/colors.dart';
import 'package:t_shirt/features/get_product_data/data/logic/controller/controller_cubit.dart';
import 'package:t_shirt/features/get_product_data/ui/widgets/selected_icon_widget.dart';

import '../../data/logic/pay/pay_cubit.dart';

class AvailableModelSizesWidgets extends StatefulWidget {
  const AvailableModelSizesWidgets({super.key, required this.availableSizes});

  final Map<String, dynamic> availableSizes;
  @override
  State<AvailableModelSizesWidgets> createState() =>
      _AvailableModelSizesWidgetsState();
}

class _AvailableModelSizesWidgetsState
    extends State<AvailableModelSizesWidgets> {
  String selectedSize = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.availableSizes.keys.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                context
                    .read<ControllerCubit>()
                    .selectSize(widget.availableSizes.keys.toList()[index]);
                    
                selectedSize = widget.availableSizes.keys.toList()[index];
                context.read<PayCubit>().size = selectedSize;
              });
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorsManager.lighterGray,
                  ),
                  child: Center(
                    child: Text(
                      widget.availableSizes.keys.toList()[index],
                      style: TextStyle(
                        color: ColorsManager.darkBlue,
                      ),
                    ),
                  ),
                ),
                selectedSize == widget.availableSizes.keys.toList()[index]
                    ? const SelectedIconWidget()
                    : const SizedBox.shrink(),
              ],
            ),
          );
        },
      ),
    );
  }
}
