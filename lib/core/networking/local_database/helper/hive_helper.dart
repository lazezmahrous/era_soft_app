import 'package:hive_flutter/hive_flutter.dart';

import '../models/user_model.dart';


class HiveHeleper {
  static const boxName = 'userBox';
  HiveHeleper._();

  // فتح الصندوق (قاعدة البيانات) عند بدء التشغيل
  static Future<void> initHive() async {
    Hive.registerAdapter(UserModelAdapter());
    await Hive.initFlutter();
    await Hive.openBox(boxName);
  }

  // دالة لإضافة بيانات إلى الصندوق
  static Future<void> addData(String key, dynamic value) async {
    final box = Hive.box(boxName);
    await box.put(key, value);
  }

  static Future<void> saveUserData(
     UserModel userData) async {
    final box = Hive.box(boxName);
    await box.add(userData);
  }

  // static Future<void> saveUserSignUpData(
  //     UserSignUpRequestBody userSignUpData) async {
  //   final box = Hive.box(boxName);
  //   await box.add(userSignUpData);
  // }

  // دالة لاسترجاع بيانات من الصندوق
  static UserModel getUserData() {
    final box = Hive.box(boxName);
    return box.values.first;
  }

  // دالة لحذف بيانات من الصندوق
  static Future<void> deleteData(String key) async {
    final box = Hive.box(boxName);
    await box.delete(key);
  }

  // دالة لإغلاق الصندوق عند عدم الحاجة إليه
  static Future<void> closeHive() async {
    await Hive.box(boxName).close();
  }
}
