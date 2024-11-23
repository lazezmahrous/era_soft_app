
import 'package:flutter/material.dart';

import '../widgets/on_boarding_button_widget.dart';
import '../widgets/on_boarding_circle_background_widget.dart';
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
            OnBoardingCircleBackgroundWidget(),
            OnBoardingTextWidget(),
            OnBoardingTranierImageWidget(),
            OnBoardingButtonWidget(),
          ],
        ),
      ),
    );
  }
}
