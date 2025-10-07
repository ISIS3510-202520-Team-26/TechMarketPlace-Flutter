import 'package:meta/meta.dart';
import '../errors/failures.dart';

@sealed
abstract class Result<T> {
  const Result();

  bool get isOk => this is Success<T>;
  bool get isErr => this is Err<T>;

  R fold<R>({
    required R Function(T) ok,
    required R Function(Failure) err,
  }) {
    final self = this;
    if (self is Success<T>) return ok(self.value);
    return err((self as Err<T>).failure);
  }

  Result<R> map<R>(R Function(T) mapValue) => fold(
        ok: (v) => Success<R>(mapValue(v)),
        err: (f) => Err<R>(f),
      );

  Result<T> mapErr(Failure Function(Failure) mapFailure) => fold(
        ok: (v) => Success<T>(v),
        err: (f) => Err<T>(mapFailure(f)),
      );

  T? get valueOrNull => switch (this) {
        Success<T>(:final value) => value,
        _ => null,
      };

  T get orThrow => fold(
        ok: (v) => v,
        err: (f) => throw StateError('Result.orThrow failure: $f'),
      );
}

class Success<T> extends Result<T> {
  const Success(this.value);
  final T value;

  @override
  String toString() => 'Success($value)';
}

class Err<T> extends Result<T> {
  const Err(this.failure);
  final Failure failure;

  @override
  String toString() => 'Err($failure)';
}
