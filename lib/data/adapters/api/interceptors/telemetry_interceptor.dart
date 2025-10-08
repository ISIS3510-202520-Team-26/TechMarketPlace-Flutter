import 'package:dio/dio.dart';

class TelemetryInterceptor extends Interceptor {
  TelemetryInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: inyectar trace-id/timer con TelemetryService si se usa backend real
    handler.next(options);
  }
}
