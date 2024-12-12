// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductResponseBody _$GetProductResponseBodyFromJson(
        Map<String, dynamic> json) =>
    GetProductResponseBody(
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      sizes: (json['sizes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>),
      ),
      datePublished: json['date_published'] == null
          ? null
          : DateTime.parse(json['date_published'] as String),
    );

Map<String, dynamic> _$GetProductResponseBodyToJson(
        GetProductResponseBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'sizes': instance.sizes,
      'date_published': instance.datePublished?.toIso8601String(),
    };
