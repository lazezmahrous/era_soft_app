import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_shirt/features/get_product_data/data/models/pay/pay_user_data.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel {
  @JsonKey(name: 'product_id')
  final String productId;
  @JsonKey(name: 'user_info')
  final PayUserData userInfo;
  final Map<String, Map<String, dynamic>> sizes;
  final String tracking;

  OrderModel(
      {required this.productId,
      required this.userInfo,
      required this.sizes,
      required this.tracking});
  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}
