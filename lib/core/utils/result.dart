import '../errors/failures.dart';

sealed class Result<T> {
  const Result();

  bool get isOk => this is Ok<T>;
  bool get isErr => this is Err<T>;

  T get value => (this as Ok<T>).value;
  Failure get failure => (this as Err<T>).failure;

  R when<R>({required R Function(T) ok, required R Function(Failure) err}) {
    final self = this;
    if (self is Ok<T>) return ok(self.value);
    return err((self as Err<T>).failure);
  }

  R fold<R>(R Function(Failure) onErr, R Function(T) onOk) {
    final self = this;
    if (self is Ok<T>) return onOk(self.value);
    return onErr((self as Err<T>).failure);
  }

  Result<U> map<U>(U Function(T) f) =>
      when(ok: (v) => Ok<U>(f(v)), err: (e) => Err<U>(e));

  Result<U> flatMap<U>(Result<U> Function(T) f) =>
      when(ok: (v) => f(v), err: (e) => Err<U>(e));

  Result<T> tap(void Function(T) sideEffect) {
    when(ok: (v) => sideEffect(v), err: (_) {});
    return this;
  }

  Result<T> tapErr(void Function(Failure) sideEffect) {
    when(ok: (_) {}, err: (e) => sideEffect(e));
    return this;
  }

  T getOrElse(T Function() orElse) =>
      when(ok: (v) => v, err: (_) => orElse());

  Future<Result<U>> asyncMap<U>(Future<U> Function(T) f) async {
    return when(
      ok: (v) async => Ok<U>(await f(v)),
      err: (e) async => Err<U>(e),
    );
  }
}

class Ok<T> extends Result<T> {
  final T value;
  const Ok(this.value);
}

class Err<T> extends Result<T> {
  final Failure failure;
  const Err(this.failure);
}
