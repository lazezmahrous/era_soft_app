import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_shirt/features/get_product_data/data/models/make_order/order_model.dart';
import 'package:t_shirt/features/get_product_data/data/models/pay/pay_user_data.dart';
import 'package:t_shirt/features/get_product_data/data/repos/make_order_repo.dart';

part 'make_order_state.dart';
part 'make_order_cubit.freezed.dart';

class MakeOrderCubit extends Cubit<MakeOrderState> {
  final MakeOrderRepo _orderRepo;
  MakeOrderCubit(this._orderRepo) : super(const MakeOrderState.initial());

  String productId = '';
  PayUserData? userInfo;
  String size = '';
  String color = '';
  String tracking = '';
  int count = 0;
  int id = 19;
  void emitMakeOrderStates() async {
    try {
      _orderRepo.makeOrder(
          orderData: OrderModel(
        productId: productId,
        userInfo: userInfo!,
        sizes: {
          size: {
            'id':id,
            'color':color,
            'count':count,
          },
        },
        tracking: tracking,
      ));
    } catch (e) {
      print(e);
    }
  }
}
