import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/helpers/spacing.dart';

import '../widgets/get_user_info.dart';
import '../widgets/lastes_model_widget.dart';
import '../widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 35.h),
        children: [
          const GetUserInfo(),
          verticalSpace(10),
          const SearchWidget(),
          verticalSpace(10),
          const LastesModelWidget(),
        ],
      ),
    );
  }
}
