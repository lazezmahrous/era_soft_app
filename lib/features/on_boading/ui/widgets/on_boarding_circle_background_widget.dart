import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/theming/colors.dart';

class OnBoardingCircleBackgroundWidget extends StatelessWidget {
  const OnBoardingCircleBackgroundWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            width: 300.w,
            height: 300.h,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 2,
                color: Colors.white.withOpacity(0.3),
              ),
            ),
            child: CustomPaint(
              painter: BackgroundPainter(),
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = RadialGradient(
        colors: [
          ColorsManager.mainOrange.withOpacity(0),
          ColorsManager.mainOrange.withOpacity(.8),
        ],
        radius: 0.6,
        center: const Alignment(0.3, 0.3),
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    canvas.drawCircle(Offset(size.width * 0.05, size.height * 0.1), 250, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
