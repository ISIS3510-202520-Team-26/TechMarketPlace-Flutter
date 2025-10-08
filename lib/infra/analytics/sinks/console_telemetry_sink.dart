import 'dart:convert';
import 'dart:developer' as dev;

import '../telemetry_sink.dart';

class ConsoleTelemetrySink implements TelemetrySink {
  final String namespace;
  ConsoleTelemetrySink({this.namespace = 'tm'});

  @override
  Future<void> log(String name, Map<String, Object?> props) async {
    final payload = {
      'event': name,
      'props': props,
      'ts': DateTime.now().toIso8601String(),
    };
    dev.log(jsonEncode(payload), name: namespace);
  }

  @override
  Future<void> flush() async {
    return;
  }
}
