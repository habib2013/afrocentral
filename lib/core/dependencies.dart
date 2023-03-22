import 'package:afrocentral/core/interceptor.dart';
import 'package:afrocentral/core/services/app_auth_service.dart';
import 'package:afrocentral/core/services/toast_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import 'env.dart';

final GetIt locator = GetIt.instance;
const baseUrl = HOST;

BaseOptions baseOptions = BaseOptions(
  connectTimeout: Duration(seconds: 20),
  sendTimeout: Duration(seconds: 20),
  receiveTimeout: Duration(seconds: 20),
);

void setUpLocator() {
  // PluginServices

  locator.registerSingleton<ToastService>(ToastService());

  locator.registerSingleton<PrettyDioLogger>(PrettyDioLogger(
      requestHeader: false,
      requestBody: false,
      responseBody: true,
      error: true,
      compact: true,
      maxWidth: 90));
  locator.registerSingleton<HttpDioInterceptors>(HttpDioInterceptors());

  locator.registerSingleton<Dio>(Dio());


}

Dio dioConfig() {
  Dio dio = locator<Dio>();
  dio.interceptors.add(locator<HttpDioInterceptors>());
  //dio.interceptors.add(locator<AuthTokenDioInterceptor>());
  dio.interceptors.add(locator<PrettyDioLogger>());
  dio.options.baseUrl = baseUrl;
  dio.options.connectTimeout =  Duration(seconds: 40);
  dio.options.sendTimeout = Duration(seconds: 40);
  dio.options.receiveTimeout = Duration(seconds: 40);
  return dio;
}

