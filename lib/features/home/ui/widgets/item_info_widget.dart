import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_shirt/core/constant/app_images.dart';
import 'package:t_shirt/core/constant/app_svgs.dart';
import 'package:t_shirt/core/helpers/spacing.dart';
import 'package:t_shirt/core/theming/colors.dart';

class ItemInfoWidget extends StatelessWidget {
  const ItemInfoWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.secondgray,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: ColorsManager.mainOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppSvgs.heart,
                  color: ColorsManager.mainWhite,
                ),
              ),
            ),
          ),
          Positioned(
            child: Image.asset(AppImages.iMG20241123WA0004RemovebgPreview),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: 300.w),
                    child: Text(
                      'Sport T-shirt Sport T-shirtSport T-shirtSport T-shirtSport T-shirt',
                      style: TextStyle(
                        fontSize: 20.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 300.w),
                        child: const Text(
                          '\$200',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 20.h,
                            child: ListView.builder(
                              itemCount: 3,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.symmetric(horizontal: 2.w),
                                width: 10.w,
                                height: 10.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
