part of 'get_latest_product_cubit.dart';

@freezed
class GetLatestProductState with _$GetLatestProductState {
  const factory GetLatestProductState.initial() = _Initial;
  const factory GetLatestProductState.loading() = Loading;
  const factory GetLatestProductState.success(
      {required List<GetProductResponseBody> products}) = Success;
  const factory GetLatestProductState.failure({required String errMessage}) =
      Failure;
}
