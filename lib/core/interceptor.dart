
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';



class HttpDioInterceptors extends InterceptorsWrapper {
  final log = Logger("HttpDioInterceptors");

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {


    options.headers["Content-Type"] = 'application/json';

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}
