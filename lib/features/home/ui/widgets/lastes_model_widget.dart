import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_info_widget.dart';

class LastesModelWidget extends StatefulWidget {
  const LastesModelWidget({super.key});
  @override
  State<LastesModelWidget> createState() => _LastesModelWidgetState();
}

class _LastesModelWidgetState extends State<LastesModelWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0.w,
          crossAxisSpacing: 20.0.h,
          childAspectRatio: .7,
        ),
        itemBuilder: (context, index) {
          return const ItemInfoWidget();
        },
      ),
    );
  }
}
