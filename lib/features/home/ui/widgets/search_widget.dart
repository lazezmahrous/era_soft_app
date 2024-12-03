import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_shirt/core/constant/app_svgs.dart';
import 'package:t_shirt/core/theming/colors.dart';

import '../../../../core/global widgets/app_text_form_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.secondgray,
        borderRadius: BorderRadius.circular(40.r),
      ),
      height: 50.h,
      child: AppTextFormField(
        hintText: 'Search',
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        prefixIcon: Padding(
          padding: EdgeInsets.all(12.w),
          child: SvgPicture.asset(
            AppSvgs.search,
            width: 20.w,
            height: 20.h,
          ),
        ),
      ),
    );
  }
}
