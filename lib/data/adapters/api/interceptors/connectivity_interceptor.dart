import 'package:dio/dio.dart';

class ConnectivityInterceptor extends Interceptor {
  final Future<bool> Function() isOnline;
  ConnectivityInterceptor(this.isOnline);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final ok = await isOnline();
    if (!ok) {
      handler.reject(DioException(requestOptions: options, error: 'No connectivity'));
      return;
    }
    handler.next(options);
  }
}
