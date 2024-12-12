import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_shirt/features/get_product_data/data/repos/pay_repo.dart';

import '../../models/pay/pay_user_data.dart';

part 'pay_state.dart';
part 'pay_cubit.freezed.dart';

class PayCubit extends Cubit<PayState> {
  String name = '';
  String address = '';
  String phoneNumber = '';
  String size = '';
  String color = '';
  int count = 0;
  int id = 19;

  int swiperImageIndex = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final PayRepo _payRepo;
  PayCubit(this._payRepo) : super(const PayState.initial());

  void emitPayStates() async {
    emit(const PayState.loading());
    try {
      Map<String, dynamic> response = await _payRepo.pay(
        userData: PayUserData(
          name: name,
          address: address,
          phoneNumber: phoneNumber,
        ),
        productData: ProductData(
          size: size,
          color: color,
          id: id,
          count: count,
        ),
      );
      if (response.containsKey('error')) {
        print('Error: ${response['error']}');
        print('Available stock: ${response['available_stock'].toString()}');
        emit(
          PayState.failure(
            error: PayError(
              errMessage: response['error'],
              stock: response['available_stock'].toString(),
            ),
          ),
        );
      } else if (response.containsKey('success') && response['success']) {
        print(
            'Product count updated successfully. New stock: ${response['updated_stock']}');
        emit(PayState.success(
          success: PaySuccess(
            message: 'Success',
            stock: response['updated_stock'].toString(),
          ),
        ));
      }
    } catch (e) {
      emit(
        PayState.failure(
          error: PayError(errMessage: e.toString(), stock: ''),
        ),
      );

      print(e);
    }
  }

  void emitGetUserInfoStates() async {
    emit(const GetUserDataLoading());
    try {
      PayUserData userData = await _payRepo.getUserInfo();
      nameController.text = userData.name;
      addressController.text = userData.address;
      phoneNumberController.text = userData.phoneNumber;
      emit(GetUserDataSuccess(
        userData: userData,
      ));
    } catch (e) {
      emit(GetUserDataFailure(errMessage: e.toString()));
      print(e);
    }
  }
}
