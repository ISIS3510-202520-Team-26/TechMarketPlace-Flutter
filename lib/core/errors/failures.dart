abstract class Failure {
  const Failure({this.message, this.cause, this.code});
  final String? message;
  final Object? cause;
  final String? code;

  @override
  String toString() => '${runtimeType}(code=$code, message=$message, cause=$cause)';
}

class NetworkFailure extends Failure {
  const NetworkFailure({String? message, Object? cause, String? code, this.statusCode, this.url})
      : super(message: message, cause: cause, code: code);
  final int? statusCode;
  final String? url;
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({String? message, Object? cause, String? code})
      : super(message: message, cause: cause, code: code);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({String? message, Object? cause, String? code})
      : super(message: message, cause: cause, code: code);
}

class ValidationFailure extends Failure {
  const ValidationFailure({String? message, Object? cause, String? code, this.fields = const {}})
      : super(message: message, cause: cause, code: code);
  final Map<String, String> fields; 
}

class CacheFailure extends Failure {
  const CacheFailure({String? message, Object? cause, String? code})
      : super(message: message, cause: cause, code: code);
}

class UnknownFailure extends Failure {
  const UnknownFailure({String? message, Object? cause, String? code})
      : super(message: message, cause: cause, code: code);
}
