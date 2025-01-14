import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/helpers/spacing.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/lastes_model_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 0.5.toInt(),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  child: const HomeAppBar(),
                )),
            Expanded(
              flex: 6,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: verticalSpace(10),
                  ),
                  SliverPadding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    sliver: const LastesModelWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
