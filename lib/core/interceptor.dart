
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';



class HttpDioInterceptors extends InterceptorsWrapper {
  final log = Logger("HttpDioInterceptors");

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {


    options.headers["Content-Type"] = 'application/json';
    // options.headers["x-api-key"] = 'fq05322d-429b-4f77-8a4p-a97ry62eb37k';
    //  options.headers["x-api-key"] = 'e8q05322dhg429b4f778a4pa97ry62eb37q';

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
