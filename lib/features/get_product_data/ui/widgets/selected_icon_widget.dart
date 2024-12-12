import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class SelectedIconWidget extends StatelessWidget {
  const SelectedIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 5,
      child: Container(
        width: 20.w,
        height: 20,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManager.mainWhite,
        ),
        child: const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
      ),
    );
  }
}
