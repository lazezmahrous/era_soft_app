import 'package:get_it/get_it.dart';
import 'package:t_shirt/core/networking/supabase/repos/supabase_auth_service.dart';
import 'package:t_shirt/core/networking/maps_services.dart';
import 'package:t_shirt/features/adding_product/data/repos/adding_product_repo.dart';
import 'package:t_shirt/features/adding_product/logic/adding_product_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/logic/controller/controller_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/logic/get_latest_product_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/logic/pay/pay_cubit.dart';
import 'package:t_shirt/features/get_product_data/data/repos/get_latest_products_repo.dart';
import 'package:t_shirt/features/get_product_data/data/repos/pay_repo.dart';
import 'package:t_shirt/features/login/data/repos/login_repo.dart';
import 'package:t_shirt/features/login/logic/cubit/login_cubit.dart';
import 'package:t_shirt/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:t_shirt/features/sign_up/logic/cubit/get_address_cubit.dart';
import 'package:t_shirt/features/sign_up/logic/cubit/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetit() async {
  getIt.registerLazySingleton<SupabaseAuthService>(() => SupabaseAuthService());
  // Sighn Up
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  // get address
  getIt.registerLazySingleton<MapsServices>(() => MapsServices());
  getIt.registerLazySingleton<GetAddressCubit>(() => GetAddressCubit(getIt()));
  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // Adding Product
  getIt.registerLazySingleton<AddingProductRepo>(() => AddingProductRepo());
  getIt.registerFactory<AddingProductCubit>(() => AddingProductCubit(getIt()));
  // Get Latest Products
  getIt.registerLazySingleton<GetLatestProductsRepo>(
      () => GetLatestProductsRepo());
  getIt.registerFactory<GetLatestProductCubit>(
      () => GetLatestProductCubit(getIt()));
  // Pay Item
  getIt.registerLazySingleton<PayRepo>(() => PayRepo());
  getIt.registerFactory<PayCubit>(() => PayCubit(getIt()));
  getIt.registerFactory<ControllerCubit>(() => ControllerCubit());
}
