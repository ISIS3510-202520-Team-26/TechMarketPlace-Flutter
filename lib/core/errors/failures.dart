abstract class Failure {
  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  const Failure(this.message, {this.cause, this.stackTrace});

  @override
  String toString() => '$runtimeType: $message';
}

class ServerFailure extends Failure {
  const ServerFailure(String message, {Object? cause, StackTrace? stackTrace})
      : super(message, cause: cause, stackTrace: stackTrace);
}

class NetworkFailure extends Failure {
  const NetworkFailure(String message, {Object? cause, StackTrace? stackTrace})
      : super(message, cause: cause, stackTrace: stackTrace);
}

class CacheFailure extends Failure {
  const CacheFailure(String message, {Object? cause, StackTrace? stackTrace})
      : super(message, cause: cause, stackTrace: stackTrace);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure(String message, {Object? cause, StackTrace? stackTrace})
      : super(message, cause: cause, stackTrace: stackTrace);
}

class ValidationFailure extends Failure {
  const ValidationFailure(String message, {Object? cause, StackTrace? stackTrace})
      : super(message, cause: cause, stackTrace: stackTrace);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure(String message, {Object? cause, StackTrace? stackTrace})
      : super(message, cause: cause, stackTrace: stackTrace);
}

class UnknownFailure extends Failure {
  const UnknownFailure(String message, {Object? cause, StackTrace? stackTrace})
      : super(message, cause: cause, stackTrace: stackTrace);
}
