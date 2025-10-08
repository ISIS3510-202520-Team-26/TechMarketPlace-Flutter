import '../telemetry_sink.dart';

class FirebaseTelemetrySink implements TelemetrySink {
  final dynamic client; 
  FirebaseTelemetrySink({this.client});

  @override
  Future<void> log(String name, Map<String, Object?> props) async {
    if (client == null) return;
    try {
      await client.logEvent(name: name, parameters: _stringify(props));
    } catch (_) {
    }
  }

  @override
  Future<void> flush() async {
    return;
  }

  Map<String, Object?> _stringify(Map<String, Object?> props) {
    return props.map((k, v) {
      if (v == null) return MapEntry(k, null);
      if (v is num || v is bool || v is String) return MapEntry(k, v);
      return MapEntry(k, v.toString());
    });
  }
}
