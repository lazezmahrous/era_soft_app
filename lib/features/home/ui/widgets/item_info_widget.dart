import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:t_shirt/core/constant/app_images.dart';
import 'package:t_shirt/core/constant/app_svgs.dart';
import 'package:t_shirt/core/di/dependency_injection.dart';
import 'package:t_shirt/core/global%20widgets/app_loading.dart';
import 'package:t_shirt/core/helpers/extensions.dart';
import 'package:t_shirt/core/routing/routers.dart';
import 'package:t_shirt/core/theming/colors.dart';
import 'package:t_shirt/features/get_product_data/data/logic/pay/pay_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/models/get_product_response_body.dart';
import 'package:t_shirt/features/home/ui/widgets/show_user_info_wifget.dart';

import '../../../get_product_data/ui/widgets/available_model_colors_widget.dart';

class ItemInfoWidget extends StatefulWidget {
  const ItemInfoWidget({super.key, required this.productData});

  final GetProductResponseBody productData;

  @override
  State<ItemInfoWidget> createState() => _ItemInfoWidgetState();
}

class _ItemInfoWidgetState extends State<ItemInfoWidget> {
  List<String> getAvailableSizes() {
    return widget.productData.sizes!.keys.toList();
  }

  List<String> getImages() {
    List<String> images = [];
    widget.productData.sizes!.forEach((sizeKey, sizeValue) {
      final colors = sizeValue['colors'] as Map<String, dynamic>;
      colors.forEach((colorKey, colorValue) {
        final List<dynamic> colorImages = colorValue['images'];
        final String hexCode = colorValue['color_hex'];
        backGroundcolors.addAll([hexCode]);
        images.addAll(colorImages.cast<String>());
      });
    });

    return images;
  }

  List<String> backGroundcolors = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          Routes.showProductScreen,
          arguments: widget.productData, // إرسال البيانات
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.secondgray,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              right: 0,
              top: 0,
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
              child: CachedNetworkImage(
                width: 150.w,
                height: 150.h,
                imageUrl: getImages().first,
                placeholder: (context, url) => const AppLoading(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(top: 10.h, right: 5.w, left: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 300.w),
                      child: Text(
                        widget.productData.name!,
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
                          child: Text(
                            '\$${widget.productData.price}',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 30.h,
                              child: ListView.builder(
                                itemCount: getImages().length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  String model = getImages()[index];
                                  print('model= =======');
                                  return Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      width: 10.w,
                                      height: 10.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            HexColor(backGroundcolors[index]),
                                      ),
                                    ),
                                  );
                                },
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
      ),
    );
  }
}
