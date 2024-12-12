// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_shirt/core/helpers/extensions.dart';
import 'package:t_shirt/core/routing/routers.dart';
import 'package:t_shirt/core/theming/styles.dart';

import '../../../../core/constant/app_svgs.dart';
import '../../../../core/helpers/spacing.dart';

class OnBoardingButtonWidget extends StatelessWidget {
  const OnBoardingButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Container(
        width: 300.w,
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.black.withOpacity(.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.h),
                child: InkWell(
                  onTap: () {
                    context.pushReplacementNamed(Routes.signupScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyles.font20WhiteMedium,
                      ),
                      horizontalSpace(20),
                      SvgPicture.asset(
                        AppSvgs.angleRight,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
