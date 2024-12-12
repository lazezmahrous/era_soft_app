import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_user_data.g.dart';

@JsonSerializable()
class PayUserData {
  @JsonKey(name: 'user_name')
  final String name;
  final String address;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  PayUserData({
    required this.name,
    required this.address,
    required this.phoneNumber,
  });

    static PayUserData fromJson(Map<String, dynamic> json) =>
      _$PayUserDataFromJson(json);
}
