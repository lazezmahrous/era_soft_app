import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/maps_services.dart';

part 'get_address_state.dart';
part 'get_address_cubit.freezed.dart';

class GetAddressCubit extends Cubit<GetAddressState> {
  final MapsServices _mapsService;
  final TextEditingController adressController = TextEditingController();

  GetAddressCubit(this._mapsService) : super(const GetAddressState.initial());

  void emitGetAdressStates() async {
    emit(const GetAddressState.loading());
    try {
      await _mapsService.fetchUserAddress().then((place) {
        adressController.text =
            '${place.country} ${place.administrativeArea} ${place.subAdministrativeArea} ${place.locality} ';
      });
      emit(const GetAddressState.success());
    } catch (e) {
      emit(const GetAddressState.failure());
    }
  }
}
