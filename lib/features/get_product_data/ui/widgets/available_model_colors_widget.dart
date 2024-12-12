import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:t_shirt/core/helpers/spacing.dart';
import 'package:t_shirt/core/theming/colors.dart';

import '../../data/logic/controller/controller_cubit.dart';
import '../../data/logic/pay/pay_cubit.dart';
import 'selected_icon_widget.dart';

class AvailableModelColorsWidget extends StatefulWidget {
  const AvailableModelColorsWidget(
      {super.key,
      required this.availableColors,
      required this.colorsNameAvailable,
      required this.sizes});

  final Map<String, Map<String, dynamic>> sizes;
  final List<String> availableColors;
  final List<String> colorsNameAvailable;
  @override
  State<AvailableModelColorsWidget> createState() =>
      _AvailableModelColorsWidgetState();
}

class _AvailableModelColorsWidgetState
    extends State<AvailableModelColorsWidget> {
  String selectedColor = '';

  Future<void> showModels() async {
    colorsNameAvailable.clear();
    availableColors.clear();
    images.clear();
    selectedColor = '';
    final colors =
        widget.sizes[context.read<ControllerCubit>().selectedSize]!['colors'];
    if (colors != null) {
      colors.forEach((colorKey, colorValue) {
        final List<dynamic>? colorImages =
            colorValue['images'] as List<dynamic>?;
        final String? hexCode = colorValue['color_hex'] as String?;

        if (colorImages != null && hexCode != null) {
          colorsNameAvailable.add(colorKey);
          availableColors.add(hexCode);
          selectedColor = availableColors.first;
          images.addAll(colorImages.cast<String>());
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  final List<String> availableColors = [];
  final List<String> colorsNameAvailable = [];
  final List<String> backGroundcolors = [];
  final List<String> images = [];

  @override
  Widget build(BuildContext context) {
    return BlocListener<ControllerCubit, ControllerState>(
        listener: (context, state) {
          state.maybeMap(orElse: () {
            return const SizedBox.shrink();
          }, selectSize: (newSize) {
            setState(() {});
            showModels();
          });
        },
        child: images.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.h,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              context
                                      .read<ControllerCubit>()
                                      .selectedColorName =
                                  colorsNameAvailable[index];

                              selectedColor = availableColors[index];
                              print(selectedColor);
                            });
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: selectedColor ==
                                            availableColors[index]
                                        ? Colors.green
                                        : ColorsManager.gray.withOpacity(.3),
                                  ),
                                  color: ColorsManager.lighterGray,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CachedNetworkImage(
                                      imageUrl: images[index]),
                                ),
                              ),
                              selectedColor == availableColors[index]
                                  ? const SelectedIconWidget()
                                  : const SizedBox.shrink(),
                            ],
                          ),
                        );
                      },
                      itemCount: images.length,
                    ),
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Selected Color :',
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      horizontalSpace(10),
                      Container(
                        width: 20.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: .2,
                            ),
                            shape: BoxShape.circle,
                            color: HexColor(selectedColor)),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox.shrink());
  }
}
