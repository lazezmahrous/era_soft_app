import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import '../networking/dio_factory.dart';
final getIt = GetIt.instance;

Future<void> setupGetit() async {
  Dio dio = DioFactory.getDio();

  // getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // // Send WhatsApp Message
  // getIt.registerLazySingleton<SendWhatsAppMessageRepo>(() => SendWhatsAppMessageRepo(getIt()));
  // getIt.registerFactory<SendWhatsAppMessageCubit>(() => SendWhatsAppMessageCubit(getIt()));
}
