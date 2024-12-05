// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequestBody _$ProductRequestBodyFromJson(Map<String, dynamic> json) =>
    ProductRequestBody(
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      count: (json['count'] as num).toInt(),
      sizes: (json['sizes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>),
      ),
      datePublished: DateTime.parse(json['date_published'] as String),
    );

Map<String, dynamic> _$ProductRequestBodyToJson(ProductRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'count': instance.count,
      'sizes': instance.sizes,
      'date_published': instance.datePublished.toIso8601String(),
    };
