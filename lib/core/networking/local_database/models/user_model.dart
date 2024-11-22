import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String email;

  @HiveField(2)
  String address;

  @HiveField(3)
  String phoneNumber;

  UserModel({
    required this.name,
    required this.email,
    required this.address,
    required this.phoneNumber,
  });
}
