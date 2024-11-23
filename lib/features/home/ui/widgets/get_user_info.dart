import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/networking/local_database/helper/hive_helper.dart';
import '../../../../core/networking/local_database/models/user_model.dart';
import 'loading_user_info_widget.dart';
import 'show_user_info_wifget.dart';

class GetUserInfo extends StatefulWidget {
  const GetUserInfo({super.key});

  @override
  State<GetUserInfo> createState() => _GetUserInfoState();
}

class _GetUserInfoState extends State<GetUserInfo> {
  late Future<UserModel> _userFuture;

  @override
  void initState() {
    super.initState();
    _userFuture = getUserInfo();
  }

  Future<UserModel> getUserInfo() async {
    return HiveHeleper.getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100.h,
      child: FutureBuilder<UserModel>(
        future: _userFuture,
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingUserInfoWidget();
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          if (snapshot.hasData) {
            UserModel userInfo = snapshot.data!;
            return ShowUserInfoWifget(
              userInfo: userInfo,
            );
          }

          return const Center(
            child: Text(
              'No User Data Found',
              style: TextStyle(color: Colors.black),
            ),
          );
        
        },
      ),
    );
  }
}
