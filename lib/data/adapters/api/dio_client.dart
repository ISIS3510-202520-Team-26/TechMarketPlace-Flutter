import 'package:dio/dio.dart';

class DioClient {
  final Dio dio;

  DioClient({
    required String baseUrl,
    List<Interceptor>? interceptors,
    Duration connectTimeout = const Duration(seconds: 10),
    Duration receiveTimeout = const Duration(seconds: 20),
  }) : dio = Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout,
        ))..interceptors.addAll(interceptors ?? []);
}
