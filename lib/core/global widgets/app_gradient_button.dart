// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppGradientButton extends StatelessWidget {
  AppGradientButton({
    super.key,
    required this.size,
    required this.text,
    required this.onPressed,
    this.gradient,
  });
  final Size size;
  final String text;
  VoidCallback onPressed;
  Gradient? gradient;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: .2,
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
          gradient: gradient ??
              LinearGradient(
                colors: [
                  ColorsManager.mainOrange,
                  ColorsManager.secondOrange,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
