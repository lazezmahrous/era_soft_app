// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayUserData _$PayUserDataFromJson(Map<String, dynamic> json) => PayUserData(
      name: json['user_name'] as String,
      address: json['address'] as String,
      phoneNumber: json['phone_number'] as String,
    );

Map<String, dynamic> _$PayUserDataToJson(PayUserData instance) =>
    <String, dynamic>{
      'user_name': instance.name,
      'address': instance.address,
      'phone_number': instance.phoneNumber,
    };
