import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_shirt/core/di/dependency_injection.dart';
import 'package:t_shirt/core/routing/routers.dart';
import 'package:t_shirt/features/adding_product/logic/adding_product_cubit.dart';
import 'package:t_shirt/features/adding_product/ui/screens/adding_product_screen.dart';
import 'package:t_shirt/features/get_product_data/data/logic/controller/controller_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/logic/get_latest_product_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/logic/pay/pay_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/models/get_product_response_body.dart';
import 'package:t_shirt/features/get_product_data/ui/screens/get_latest_product_screen.dart';
import 'package:t_shirt/features/get_product_data/ui/screens/show_product_screen.dart';
import 'package:t_shirt/features/home/ui/screens/home_screen.dart';
import 'package:t_shirt/features/home/ui/widgets/bottom_navbar.dart';
import 'package:t_shirt/features/login/logic/cubit/login_cubit.dart';
import 'package:t_shirt/features/login/ui/screens/login_screen.dart';
import 'package:t_shirt/features/sign_up/logic/cubit/get_address_cubit.dart';

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
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
              ),
              BlocProvider(
                create: (context) =>
                    getIt<GetAddressCubit>()..emitGetAdressStates(),
              ),
            ],
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
          builder: (_) => const HomeScreen(),
        );
      case Routes.bottomNavBar:
        return MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        );
      case Routes.addingProductScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<AddingProductCubit>(),
            child: const AddingProductScreen(),
          ),
        );
      case Routes.getLatestProducts:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<GetAddressCubit>(),
            child: const GetLatestProductScreen(),
          ),
        );

      case Routes.showProductScreen:
        final product =
            settings.arguments as GetProductResponseBody; // استقبال البيانات
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<PayCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<ControllerCubit>(),
              ),
            ],
            child: ShowProductScreen(
              productResponseBody: product, // تمرير البيانات للصفحة
            ),
          ),
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
