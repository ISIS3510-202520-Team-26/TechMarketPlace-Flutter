class AppException implements Exception {
  AppException(this.message, {this.cause, this.code});
  final String message;
  final Object? cause;
  final String? code;

  @override
  String toString() => 'AppException(code=$code, message=$message, cause=$cause)';
}

class NetworkException extends AppException {
  NetworkException(String message, {Object? cause, String? code, this.statusCode, this.url})
      : super(message, cause: cause, code: code);
  final int? statusCode;
  final String? url;
}

class UnauthorizedException extends AppException {
  UnauthorizedException(String message, {Object? cause, String? code})
      : super(message, cause: cause, code: code);
}

class NotFoundException extends AppException {
  NotFoundException(String message, {Object? cause, String? code})
      : super(message, cause: cause, code: code);
}

class CacheException extends AppException {
  CacheException(String message, {Object? cause, String? code})
      : super(message, cause: cause, code: code);
}
