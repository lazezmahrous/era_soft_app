import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:t_shirt/core/helpers/extensions.dart';
import 'package:t_shirt/core/networking/local_database/helper/hive_helper.dart';
import 'package:t_shirt/core/routing/app_router.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/shared_pref_constans.dart';
import 'core/helpers/shared_pref_helper.dart';
import 'tshirt_app.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://vfgvipnlrjvzdoxiiaoj.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZmZ3ZpcG5scmp2emRveGlpYW9qIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzIwNDA1ODcsImV4cCI6MjA0NzYxNjU4N30.fjdmmJdJXGETlD8BwvEeKu298EKnTQttX6WKcRN8BnA',
  );

  await Supabase.instance.client.auth.refreshSession();
  await ScreenUtil.ensureScreenSize();
  await HiveHeleper.initHive();
  await setupGetit();
  await checkIfLoggedInUser();
  runApp(
    TshirtApp(
      appRouter: AppRouter(),
    ),
  );
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
