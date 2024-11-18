import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_shirt/core/constant/app_images.dart';
import 'package:t_shirt/core/constant/app_svgs.dart';
import 'package:t_shirt/core/helpers/spacing.dart';

import '../../../../core/theming/styles.dart';
import '../widgets/on_boarding_button_widget.dart';
import '../widgets/on_boarding_text_widget.dart';
import '../widgets/on_boarding_tranier_image_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            OnBoardingTextWidget(),
            OnBoardingTranierImageWidget(),
            OnBoardingButtonWidget(),
          ],
        ),
      ),
    );
  }
}
