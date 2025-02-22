import 'package:pln_test/infrastructures/api_service_interface.dart';
import 'package:pln_test/infrastructures/misc/endpoint.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import 'package:dio/dio.dart';
import '../api_service.dart';

/// Commonly here to declare dependency injection
class RootModule {
  static Future<void> init(GetIt injector) async {
    injector.registerFactory<Dio>(() {
      var dio = Dio();
      dio.options.connectTimeout = const Duration(seconds: 60);
      dio.options.receiveTimeout = const Duration(seconds: 60);
      dio.options.headers['Accept'] = 'application/json';
      dio.options.headers['X_FORWARDED_PROTO'] = 'HTTPS';
      dio.options.headers['HTTPS'] = 'ON';

      var endpoints = injector.get<Endpoints>();

      // use for log response and request data
      if (kDebugMode || kProfileMode) {
        dio.interceptors.add(LogInterceptor(
            requestBody: true,
            responseBody: true,
            requestHeader: true,
            responseHeader: false,
            request: true));
      }

      // dio.interceptors.add(ChuckerDioInterceptor());
      dio.options.baseUrl = endpoints.baseUrl;
      return dio;
    });

    injector.registerFactory<ApiServiceInterface>(() {
      return ApiService(injector.get());
    });

    injector.registerFactory<Endpoints>(() {
      return Endpoints(dotenv.env['BASE_URL'] ?? '');
    });
  }
}
