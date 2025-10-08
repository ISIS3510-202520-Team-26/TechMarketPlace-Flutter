class NetworkException implements Exception {
  final String message;
  final int? statusCode;
  const NetworkException(this.message, {this.statusCode});

  @override
  String toString() => 'NetworkException($statusCode): $message';
}

class CacheException implements Exception {
  final String message;
  const CacheException(this.message);

  @override
  String toString() => 'CacheException: $message';
}

class SerializationException implements Exception {
  final String message;
  const SerializationException(this.message);

  @override
  String toString() => 'SerializationException: $message';
}

class UnauthorizedException implements Exception {
  final String message;
  const UnauthorizedException(this.message);

  @override
  String toString() => 'UnauthorizedException: $message';
}


class ServerException implements Exception {
  final String message;
  ServerException(this.message);
  @override
  String toString() => 'ServerException: $message';
}



