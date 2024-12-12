part of 'pay_cubit.dart';

@freezed
abstract class PayState with _$PayState {
  const factory PayState.initial() = _Initial;
  const factory PayState.loading() = Loading;
  const factory PayState.success({required PaySuccess success}) = Success;
  const factory PayState.failure({required PayError error}) = Failure;
  const factory PayState.getUserDataLoading() = GetUserDataLoading;
  const factory PayState.getUserDataSuccess({required PayUserData userData}) = GetUserDataSuccess;
  const factory PayState.getUserDataFailure({required String errMessage}) = GetUserDataFailure;
}

class PayError {
  final String errMessage;
  final String stock;
  PayError({
    required this.errMessage,
    required this.stock,
  });
}

class PaySuccess {
  final String message;
  final String stock;

  PaySuccess({
    required this.message,
    required this.stock,
  });
}
