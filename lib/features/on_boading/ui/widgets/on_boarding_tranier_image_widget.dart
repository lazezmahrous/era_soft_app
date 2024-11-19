import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/app_images.dart';

class OnBoardingTranierImageWidget extends StatelessWidget {
  const OnBoardingTranierImageWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      // left: 0,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: SizedBox(
              width: 420.w,
              height: 500.h,
              child: Image.asset(
                AppImages.onBoardingLogo,
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              width: 400.w,
              height: 500.h,
              child: Image.asset(AppImages.onBoardingModel),
            ),
          ),
        ],
      ),
    );
  }
}
