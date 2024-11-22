// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'user_sign_up_request_body.g.dart';

@JsonSerializable()
class UserSignUpRequestBody {
  @JsonKey(name: 'user_name')
  final String userName;
  final String email;
  final String password;
  final String address;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  // final String userId;

  UserSignUpRequestBody({
    required this.userName,
    required this.email,
    required this.password,
    required this.address,
    required this.phoneNumber,
    // required this.userId,
  });

  Map<String, dynamic> toJson() => _$UserSignUpRequestBodyToJson(this);
}
