// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => OrderModel(
      productId: json['product_id'] as String,
      userInfo: PayUserData.fromJson(json['user_info'] as Map<String, dynamic>),
      sizes: (json['sizes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>),
      ),
      tracking: json['tracking'] as String,
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'user_info': instance.userInfo,
      'sizes': instance.sizes,
      'tracking': instance.tracking,
    };
