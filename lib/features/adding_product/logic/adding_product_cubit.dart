import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_shirt/features/adding_product/data/models/product_request_body.dart';
import 'package:t_shirt/features/adding_product/data/repos/adding_product_repo.dart';

part 'adding_product_state.dart';
part 'adding_product_cubit.freezed.dart';

class AddingProductCubit extends Cubit<AddingProductState> {
  final AddingProductRepo _addingProductRepo;
  final formKay = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  final Map<String, Map<String, dynamic>> productSizes = {};

  List<String> sizes = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
    'XXXL',
    'XXXXL',
  ];
  List<String> selectedSizes = [];
  Map<String, String> colors = {
    "Red": "#da0000",
    "Green": "#049f25",
    "Blue": "#0000FF",
    "Purple": "#800080",
    "Orange": "#fbbd00",
    'Yellow': '#FFFF00',
    'Black': '#000000',
    'White': '#FFFFFF',
    'Gray': '#808080',
    'Pink': '#FFC0CB',
    'Brown': '#A52A2A',
    'Cyan': '#00FFFF',
    'Magenta': '#FF00FF',
    'Lime': '#00FF00',
    'Teal': '#008080',
    'Navy': '#000080',
    'Gold': '#FFD700',
    'Silver': '#C0C0C0',
  };
  List<String> selectedColors = [];

  AddingProductCubit(this._addingProductRepo)
      : super(const AddingProductState.initial());

  void emitAddingProductStates() async {
    emit(const AddingProductState.loading());

    try {
      print('productSizes:ssssss $productSizes');

      await _addingProductRepo.addingProduct(
          product: ProductRequestBody(
        name: nameController.text,
        description: descriptionController.text,
        price: double.parse(priceController.text),
        count: 12,
        sizes: productSizes,
        datePublished: DateTime.now(),
      ));
      emit(const AddingProductState.succses());
    } catch (e) {
      print(e.toString());
      emit(const AddingProductState.failure());
    }
  }

  void toggleSize(String size) {
    print('sssssssssssda$productSizes');
    if (selectedSizes.contains(size)) {
      selectedSizes.remove(size);
    } else {
      selectedSizes.add(size);
    }
  }

  void toggleColor(String color) {
    print('sssssssssssda$productSizes');

    if (selectedColors.contains(color)) {
      selectedColors.remove(color);
    } else {
      selectedColors.add(color);
    }
  }
}
