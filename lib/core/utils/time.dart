import 'dart:async';
import 'uuid.dart';
import '../constants/telemetry_keys.dart';

class TelemetryStopwatch {
  TelemetryStopwatch._(this._sw, this.handle);
  final Stopwatch _sw;
  final TelemetryTimerHandle handle;

  static TelemetryStopwatch start({String? key, Map<String, Object?> baseProps = const {}}) {
    final h = TelemetryTimerHandle(
      id: Uuid.v4(),
      key: key ?? TelemetryTimers.generic,
      startedAtMs: DateTime.now().millisecondsSinceEpoch,
      baseProps: Map.unmodifiable(baseProps),
    );
    final sw = Stopwatch()..start();
    return TelemetryStopwatch._(sw, h);
  }

  int stop() {
    _sw.stop();
    return _sw.elapsedMilliseconds;
  }
}

class TelemetryTimerHandle {
  TelemetryTimerHandle({
    required this.id,
    required this.key,
    required this.startedAtMs,
    required this.baseProps,
  });

  final String id;
  final String key; 
  final int startedAtMs;
  final Map<String, Object?> baseProps;
}

abstract class Telemetry {
  Future<void> logEvent(String name, Map<String, Object?> props);

  TelemetryTimerHandle startTimer(String key, {Map<String, Object?> baseProps = const {}});
  Future<void> endTimer(
    TelemetryTimerHandle handle, {
    Map<String, Object?> extraProps = const {},
  });
}

class NoopTelemetry implements Telemetry {
  @override
  Future<void> logEvent(String name, Map<String, Object?> props) async {
  }

  @override
  TelemetryTimerHandle startTimer(String key, {Map<String, Object?> baseProps = const {}}) {
    return TelemetryTimerHandle(
      id: Uuid.v4(),
      key: key,
      startedAtMs: DateTime.now().millisecondsSinceEpoch,
      baseProps: Map.unmodifiable(baseProps),
    );
  }

  @override
  Future<void> endTimer(
    TelemetryTimerHandle handle, {
    Map<String, Object?> extraProps = const {},
  }) async {
   
  }
}


class Timed<T> {
  Timed(this.value, this.durationMs);
  final T value;
  final int durationMs;
}

Future<Timed<T>> measureAsync<T>(Future<T> Function() task) async {
  final sw = Stopwatch()..start();
  final value = await task();
  sw.stop();
  return Timed<T>(value, sw.elapsedMilliseconds);
}
