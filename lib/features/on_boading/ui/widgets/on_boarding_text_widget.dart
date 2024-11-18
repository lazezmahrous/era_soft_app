import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class OnBoardingTextWidget extends StatelessWidget {
  const OnBoardingTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 300.w,
        ),
        child: Column(
          children: [
            Text(
              'Lets Creat Your Own Style',
              style: TextStyles.font24BlackBold.copyWith(
                letterSpacing: .8,
                wordSpacing: .5,
              ),
            ),
            verticalSpace(20),
            Text(
              'Lets Creat Your Own Style Lets Creat Your Own Style Lets Creat Your Own Style Lets Creat Your Own Style Lets Creat Your Own Style',
              style: TextStyles.font12GrayMedium.copyWith(
                letterSpacing: .8,
                wordSpacing: .5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
