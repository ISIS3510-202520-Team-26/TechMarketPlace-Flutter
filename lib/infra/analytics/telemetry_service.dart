import 'telemetry_sink.dart';
import 'timers.dart';

class TelemetryService {
  final TelemetrySink _sink;
  final Timers _timers;

  TelemetryService({
    required TelemetrySink sink,
    Timers? timers,
  })  : _sink = sink,
        _timers = timers ?? Timers();

  Future<void> logEvent(String name, Map<String, Object?> props) {
    return _sink.log(name, props);
  }

  String startTimer(String key, Map<String, Object?> baseProps) {
    return _timers.start(key, baseProps);
  }

  Future<void> endTimer(String handle, {Map<String, Object?> extraProps = const {}}) async {
    final payload = _timers.end(handle, extraProps: extraProps);
    await _sink.log('timer_end', {'handle': handle, ...payload});
  }

  Future<void> flush() => _sink.flush();
}
