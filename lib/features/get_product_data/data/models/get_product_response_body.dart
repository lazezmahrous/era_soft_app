import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_product_response_body.g.dart';

@JsonSerializable()
class GetProductResponseBody {
  final String? name;
  final String? description;
  final double? price;
  final Map<String, Map<String, dynamic>>? sizes;
  @JsonKey(name: 'date_published')
  final DateTime? datePublished;

  GetProductResponseBody({
    required this.name,
    required this.description,
    required this.price,
    required this.sizes,
    required this.datePublished,
  });

  static GetProductResponseBody fromJson(Map<String, dynamic> json) =>
      _$GetProductResponseBodyFromJson(json);
}
