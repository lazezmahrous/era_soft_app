import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_info_widget.dart';

class LastesModelWidget extends StatefulWidget {
  const LastesModelWidget({super.key});

  @override
  State<LastesModelWidget> createState() => _LastesModelWidgetState();
}

class _LastesModelWidgetState extends State<LastesModelWidget> {
  List<String> models = [];
  bool isLoading = false;
  int page = 1;

  // دالة وهمية لجلب البيانات
  Future<void> fetchModels() async {
    if (isLoading) return;
    setState(() {
      isLoading = true;
    });

    // محاكاة طلب بيانات مع تأخير بسيط
    await Future.delayed(const Duration(seconds: 2));
    List<String> newModels = List.generate(10, (index) => 'Model ${(page - 1) * 10 + index + 1}');
    setState(() {
      models.addAll(newModels);
      page++;
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchModels(); 
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent && !isLoading) {
          fetchModels(); 
        }
        return false;
      },
      child: SliverGrid.builder(
        itemCount: models.length + (isLoading ? 1 : 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0.w,
          crossAxisSpacing: 20.0.h,
          childAspectRatio: .7,
        ),
        itemBuilder: (context, index) {
          if (index < models.length) {
            return const ItemInfoWidget();
          } else {
            return const Center(child: CircularProgressIndicator()); 
          }
        },
      ),
    );
  }
}
