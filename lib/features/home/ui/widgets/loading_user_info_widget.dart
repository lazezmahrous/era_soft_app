import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:t_shirt/core/helpers/spacing.dart';
import 'package:t_shirt/core/theming/colors.dart';

class LoadingUserInfoWidget extends StatefulWidget {
  const LoadingUserInfoWidget({super.key});

  @override
  State<LoadingUserInfoWidget> createState() => _LoadingUserInfoWidgetState();
}

class _LoadingUserInfoWidgetState extends State<LoadingUserInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150.h,
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: ColorsManager.mainWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100.w,
              height: 15.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                color: Colors.white,
              ),
            ),
            verticalSpace(10),
            Container(
              width: 300.w,
              height: 15.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
