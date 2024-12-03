import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/features/home/ui/widgets/get_user_info.dart';
import 'package:t_shirt/features/home/ui/widgets/search_widget.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minWidth: 120.h, maxHeight: 130.h),
      decoration: const BoxDecoration(),
      child: const Column(
        children: [
          Expanded(
            flex: 2,
            child: GetUserInfo(),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SearchWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
