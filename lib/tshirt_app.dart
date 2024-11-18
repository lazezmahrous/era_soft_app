import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t_shirt/core/routing/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/routing/routers.dart';
import 'core/theming/colors.dart';

class TshirtApp extends StatefulWidget {
  const TshirtApp({super.key, required this.appRouter});

  final AppRouter appRouter;
  @override
  State<TshirtApp> createState() => _TshirtAppState();
}

class _TshirtAppState extends State<TshirtApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'HindMysuru',
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: ColorsManager.mainWhite,
          ),
          locale: const Locale('en', 'EN'),
          localizationsDelegates: const [
            // S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: widget.appRouter.generateRoute,
        );
      },
    );
  }
}
