import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/global%20widgets/app_gradient_button.dart';
import 'package:t_shirt/core/global%20widgets/app_text_form_field.dart';
import 'package:t_shirt/core/helpers/extensions.dart';
import 'package:t_shirt/core/helpers/spacing.dart';
import 'package:t_shirt/features/adding_product/logic/adding_product_cubit.dart';
import '../widgets/adding_product_listner.dart';
import '../widgets/adding_size_data.dart';

class AddingProductScreen extends StatefulWidget {
  const AddingProductScreen({super.key});

  @override
  State<AddingProductScreen> createState() => _AddingProductScreenState();
}

class _AddingProductScreenState extends State<AddingProductScreen> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddingProductCubit>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Form(
              key: cubit.formKay,
              child: Column(
                children: [
                  AppTextFormField(
                    hintText: 'Name :',
                    controller: cubit.nameController,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return 'Please Write A vaild Name';
                      }
                      return null;
                    },
                  ),
                  AppTextFormField(
                    hintText: 'Description :',
                    controller: context
                        .read<AddingProductCubit>()
                        .descriptionController,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return 'Please Write A vaild Description';
                      }
                      return null;
                    },
                  ),
                  AppTextFormField(
                    hintText: 'Price :',
                    controller: cubit.priceController,
                    keyboardType: TextInputType.number,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return 'Please Write A vaild Price';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(40),
                  const Text(
                    'Select Sizes:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: cubit.sizes.map((size) {
                      return FilterChip(
                        label: Text(size),
                        selected: context
                            .read<AddingProductCubit>()
                            .selectedSizes
                            .contains(size),
                        onSelected: (selected) {
                          setState(() {
                            cubit.toggleSize(size);
                          });
                        },
                      );
                    }).toList(),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cubit.selectedSizes.length,
                    itemBuilder: (context, index) {
                      return AddingSizeData(
                        index: index,
                      );
                    },
                  ),
                  verticalSpace(10),
                  Divider(
                    color: Colors.black,
                    height: 10.h,
                  ),
                  verticalSpace(10),
                  AppGradientButton(
                    size: Size(double.infinity, 50.h),
                    text: 'AddProduct',
                    onPressed: () {
                      if (cubit.formKay.currentState!.validate()) {
                        context
                            .read<AddingProductCubit>()
                            .emitAddingProductStates();
                      } else {}
                    },
                  ),
                  verticalSpace(10),
                  const AddingProductListner(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
