part of 'make_order_cubit.dart';

@freezed
abstract class MakeOrderState with _$MakeOrderState {
  const factory MakeOrderState.initial() = _Initial;
  const factory MakeOrderState.loading() = Loading;
  const factory MakeOrderState.success() = Success;
  const factory MakeOrderState.failure() = Failure;
}
