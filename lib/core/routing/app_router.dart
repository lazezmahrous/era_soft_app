import 'package:flutter/material.dart';
import 'package:t_shirt/core/di/dependency_injection.dart';
import 'package:t_shirt/core/routing/routers.dart';

import '../../features/on_boading/ui/screens/on_boarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
