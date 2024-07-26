import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pragma_test/app/detail/detail_page_vm.dart';
import 'package:pragma_test/app/landing/landing_page_vm.dart';
import 'package:pragma_test/common/api_client.dart';
import 'package:pragma_test/data/clients/breed_client.dart';
import 'package:pragma_test/data/repositories/breeds_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final _getIt = GetIt.instance;

class ServiceLocator {
  static const _kBaseUrl = 'BASE_URL';
  static const _kApiKey = 'API_KEY';

  static void init() {
    const String baseUrl = String.fromEnvironment(_kBaseUrl);
    const String apiKey = String.fromEnvironment(_kApiKey);

    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    final Dio dio = Dio(options);
    dio.interceptors.add(PrettyDioLogger());

    _getIt.registerFactory(() => ApiClient(dio));

    _getIt.registerFactory(() => BreedClient(_getIt.get(), apiKey));

    _getIt.registerSingleton<BreedsRepository>(BreedsRepositoryImpl(_getIt.get()));

    _getIt.registerFactory(() => LandingPageViewModel(_getIt.get()));
    _getIt.registerFactory(() => DetailPageViewModel(_getIt.get()));
  }
}
