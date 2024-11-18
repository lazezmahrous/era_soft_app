import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/routing/app_router.dart';

import 'core/di/dependency_injection.dart';
import 'tshirt_app.dart';

void main() async {
  await setupGetit();
  await ScreenUtil.ensureScreenSize();
  runApp(
    TshirtApp(
      appRouter: AppRouter(),
    ),
  );
}
