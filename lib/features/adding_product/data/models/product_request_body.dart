import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_request_body.g.dart';

@JsonSerializable()
class ProductRequestBody {
  final String name;
  final String description;
  final double price;
  final int count;
  final Map<String, Map<String, dynamic>> sizes;
  @JsonKey(name: 'date_published')
  final DateTime datePublished;
  ProductRequestBody({
    required this.name,
    required this.description,
    required this.price,
    required this.count,
    required this.sizes,
    required this.datePublished,
  });

  Map<String, dynamic> toJson() => _$ProductRequestBodyToJson(this);
}
