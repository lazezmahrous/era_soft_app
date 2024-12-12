part of 'adding_product_cubit.dart';

@freezed
class AddingProductState with _$AddingProductState {
  const factory AddingProductState.initial() = _Initial;
  const factory AddingProductState.loading() = Loading;
  const factory AddingProductState.succses() = Succses;
  const factory AddingProductState.failure() = Failure;
}
