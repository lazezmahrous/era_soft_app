import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'controller_state.dart';
part 'controller_cubit.freezed.dart';

class ControllerCubit extends Cubit<ControllerState> {
  ControllerCubit() : super(const ControllerState.initial());

  String selectedSize = '';
  String selectedColorName = '';
  int count = 0;
  
  void selectSize(String size) {
    print(size);
    selectedSize = size;
    emit(ControllerState.selectSize(selectedSize: size));
  }
}
