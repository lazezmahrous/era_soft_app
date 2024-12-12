part of 'controller_cubit.dart';

@freezed
abstract class ControllerState with _$ControllerState {
  const factory ControllerState.initial() = _Initial;
  const factory ControllerState.changeModelColor({required int newModelColorIndex}) = ChangeModelColor;
  const factory ControllerState.selectSize({required String selectedSize}) = SelectSize;
}
