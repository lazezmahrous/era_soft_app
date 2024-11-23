import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_shirt/core/di/dependency_injection.dart';
import 'package:t_shirt/core/routing/routers.dart';
import 'package:t_shirt/features/home/ui/screens/home_screen.dart';
import 'package:t_shirt/features/home/ui/widgets/bottom_navbar.dart';
import 'package:t_shirt/features/login/logic/cubit/login_cubit.dart';
import 'package:t_shirt/features/login/ui/screens/login_screen.dart';

import '../../features/on_boading/ui/screens/on_boarding.dart';
import '../../features/sign_up/logic/cubit/sign_up_cubit.dart';
import '../../features/sign_up/ui/screens/sign_up_screen.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.bottomNavBar:
        return MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
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
