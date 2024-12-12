import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_shirt/core/constant/app_svgs.dart';
import 'package:t_shirt/core/helpers/extensions.dart';
import 'package:t_shirt/core/theming/colors.dart';
import 'package:t_shirt/core/theming/styles.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/networking/local_database/models/user_model.dart';
import '../../../../core/networking/supabase/repos/supabase_auth_service.dart';
import '../../../../core/routing/routers.dart';

class ShowUserInfoWifget extends StatelessWidget {
  const ShowUserInfoWifget({super.key, required this.userInfo});
  final UserModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 230.w),
              child: Text(
                'Hello, ${userInfo.name}',
                style: TextStyles.font24BlueBold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            verticalSpace(5),
            FittedBox(
              child: Row(
                children: [
                  SvgPicture.asset(AppSvgs.marker),
                  horizontalSpace(10),
                  Text(
                    userInfo.address,
                    style: TextStyles.font13DarkGrayRegular,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () async {
            // await SupabaseAuthService().signOut();
            context.pushNamed(
              Routes.addingProductScreen,
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: ColorsManager.secondgray,
            ),
            width: 40.w,
            height: 40.h,
            child: Padding(
              padding: EdgeInsets.all(10.r),
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}
