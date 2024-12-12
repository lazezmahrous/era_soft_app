import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/global%20widgets/app_text_form_field.dart';
import 'package:t_shirt/features/get_product_data/data/logic/get_latest_product_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/logic/pay/pay_cubit.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

import '../../../../core/global widgets/app_loading.dart';
import '../../../../core/theming/colors.dart';

class SwiperImagesWidget extends StatefulWidget {
  const SwiperImagesWidget({super.key, required this.images});
  final List<String> images;
  @override
  State<SwiperImagesWidget> createState() => _SwiperImagesWidgetState();
}

class _SwiperImagesWidgetState extends State<SwiperImagesWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      width: 350.w,
      child: Swiper(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: CachedNetworkImage(
                imageUrl: widget.images[index],
                placeholder: (context, url) => const AppLoading(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          );
        },
        loop: true,
        itemCount: widget.images.length,
        onIndexChanged: (value) {
          // context.read<PayCubit>().swiperImageIndex = value;
          // print(context.read<PayCubit>().swiperImageIndex);
          // print(value);
        },
        pagination: SwiperPagination(
          margin: EdgeInsets.symmetric(vertical: 20.h),
          builder: DotSwiperPaginationBuilder(
            color: ColorsManager.lighterGray,
            activeColor: ColorsManager.mainOrange,
          ),
        ),
        control: SwiperControl(
          color: ColorsManager.mainOrange,
          padding: const EdgeInsets.all(30),
        ),
      ),
    );
  }
}
