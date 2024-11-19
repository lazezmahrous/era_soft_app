import 'package:flutter/material.dart';
import 'package:t_shirt/core/di/dependency_injection.dart';
import 'package:t_shirt/core/routing/routers.dart';

import '../../features/on_boading/ui/screens/on_boarding.dart';
import '../../features/sign_up/ui/screens/signup_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoarding(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
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
