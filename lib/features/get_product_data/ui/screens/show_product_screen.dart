import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:t_shirt/core/constant/app_svgs.dart';
import 'package:t_shirt/core/helpers/extensions.dart';
import 'package:t_shirt/core/helpers/spacing.dart';
import 'package:t_shirt/core/theming/colors.dart';
import '../../data/models/get_product_response_body.dart';
import '../widgets/available_model_colors_widget.dart';
import '../widgets/available_model_sizes_widgets.dart';
import '../widgets/gradient_background.dart';
import '../widgets/item_data_info_widget.dart';
import '../widgets/pay_bloc_listener.dart';
import '../widgets/pay_button_widget.dart';
import '../widgets/swiper_images_widget.dart';

class ShowProductScreen extends StatefulWidget {
  const ShowProductScreen({super.key, required this.productResponseBody});
  final GetProductResponseBody productResponseBody;
  @override
  State<ShowProductScreen> createState() => _ShowProductScreenState();
}

class _ShowProductScreenState extends State<ShowProductScreen> {
  List<String> backGroundcolors = [];
  List<String> colorsNameAvailable = [];
  List<String> getImages() {
    List<String> images = [];
    widget.productResponseBody.sizes!.forEach((sizeKey, sizeValue) {
      final colors = sizeValue['colors'] as Map<String, dynamic>;

      colors.forEach((colorKey, colorValue) {
        final List<dynamic> colorImages = colorValue['images'];
        final String hexCode = colorValue['color_hex'];
        colorsNameAvailable.addAll([colorKey]);
        backGroundcolors.addAll([hexCode]);
        images.addAll(colorImages.cast<String>());
      });
    });

    return images;
  }

  String? selectedSize;

  @override
  void initState() {
    getImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const PayButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppSvgs.heart,
              color: ColorsManager.darkBlue,
            ),
          )
        ],
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: ColorsManager.darkBlue,
            )),
        title: Container(
          constraints: BoxConstraints(maxWidth: 250.h),
          child: Text(
            widget.productResponseBody.name!,
            style: TextStyle(
                color: ColorsManager.darkBlue, overflow: TextOverflow.ellipsis),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SwiperImagesWidget(
            images: getImages(),
          ),
          verticalSpace(10),
          ItemDataInfoWidget(
            itemName: widget.productResponseBody.name!,
            itemDescription: widget.productResponseBody.description!,
          ),
          verticalSpace(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: AvailableModelSizesWidgets(
              availableSizes: widget.productResponseBody.sizes!,
            ),
          ),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: AvailableModelColorsWidget(
              sizes: widget.productResponseBody.sizes!,
              availableColors: getImages(),
              colorsNameAvailable: colorsNameAvailable,
            ),
          ),
          verticalSpace(80),
          const PayBlocListener(),
        ],
      ),
    );
  }
}
