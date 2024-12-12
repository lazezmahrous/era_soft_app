import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/features/adding_product/logic/adding_product_cubit.dart';

import '../../../../core/global widgets/app_gradient_button.dart';
import '../../../../core/global widgets/app_pick_image.dart';
import '../../../../core/global widgets/app_text_form_field.dart';
import '../../../../core/helpers/spacing.dart';
import '../../data/repos/adding_product_repo.dart';

class AddingSizeData extends StatefulWidget {
  const AddingSizeData({super.key, required this.index});

  final int? index;

  @override
  State<AddingSizeData> createState() => _AddingSizeDataState();
}

class _AddingSizeDataState extends State<AddingSizeData> {
  Map<String, TextEditingController> colorControllers =
      {}; // خريطة لتخزين Controllers
  Map<String, String> colorsSelected = {};
  List<File> modelsImages = [];
  List<String> images = [];

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddingProductCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Data Of ${cubit.selectedSizes[widget.index!]} : ',
            style: const TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          verticalSpace(10),
          Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            runSpacing: 10,
            children: cubit.colors.entries.map((entry) {
              final colorName = entry.key;
              final colorValue = entry.value;
              return FilterChip(
                label: Text(colorName),
                avatar: CircleAvatar(
                  backgroundColor: Color(
                    int.parse(colorValue.replaceAll("#", "0xFF")),
                  ),
                ),
                selected: colorsSelected.containsKey(colorName),
                onSelected: (selected) {
                  setState(() {
                    if (colorsSelected.containsKey(colorName)) {
                      colorsSelected.remove(colorName);
                      colorControllers
                          .remove(colorName); // إزالة الـ controller
                    } else {
                      colorsSelected[colorName] = colorValue;
                      colorControllers[colorName] =
                          TextEditingController(); // إضافة controller جديد
                    }
                  });
                },
              );
            }).toList(),
          ),
          verticalSpace(10),
          ListView.builder(
            shrinkWrap: true,
            itemCount: colorsSelected.keys.toList().length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final colorName = colorsSelected.keys.toList()[index];

              return Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: AppTextFormField(
                      hintText: 'Count of color $colorName:',
                      controller: colorControllers[
                          colorName], // استخدام الـ controller الخاص باللون
                      validator: (data) {
                        if (data!.isEmpty) {
                          return 'Please Write A valid Count';
                        }
                        return null;
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppImagePickerWidget(
                        onSelect: (p0) => modelsImages.add(p0), // حفظ الصورة
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          verticalSpace(20),
          AppGradientButton(
            size: Size(double.infinity, 50.h),
            text: 'AddSizeData',
            onPressed: () async {
              print(modelsImages);
              print(colorsSelected);
              final AddingProductRepo addingProductRepo = AddingProductRepo();
              for (File element in modelsImages) {
                String imageUploadedPath =
                    await addingProductRepo.uploadProductImage(file: element);
                images.addAll([imageUploadedPath]);
              }

              final size = cubit.selectedSizes[widget.index!];
              if (!cubit.productSizes.containsKey(size)) {
                cubit.productSizes[size] = {'colors': {}};
              }

              colorsSelected.forEach((colorName, colorValue) {
                cubit.productSizes[size]!['colors'][colorName] = {
                  'count':
                      int.parse(colorControllers[colorName]!.text.toString()),
                  'images': images,
                  'color_hex':colorValue,
                };
              });
              print('Updated product sizes: ${cubit.productSizes}');
            },
          ),
        ],
      ),
    );
  }
}
