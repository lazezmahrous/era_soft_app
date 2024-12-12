import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_shirt/features/get_product_data/data/models/get_product_response_body.dart';
import 'package:t_shirt/features/get_product_data/data/repos/get_latest_products_repo.dart';

part 'get_latest_product_state.dart';
part 'get_latest_product_cubit.freezed.dart';

class GetLatestProductCubit extends Cubit<GetLatestProductState> {
  final GetLatestProductsRepo _getLatestProductsRepo;
  GetLatestProductCubit(this._getLatestProductsRepo)
      : super(const GetLatestProductState.initial());

  void emitGetLatestProducts() async {
    emit(const GetLatestProductState.loading());

    try {
      List<GetProductResponseBody> products =
          await _getLatestProductsRepo.getLatestProducts();
      emit(GetLatestProductState.success(products: products));
    } catch (e) {
      emit(const GetLatestProductState.failure(errMessage: ''));

      print('error ------------------------------- $e');
    }
  }
}
