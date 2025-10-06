import 'dart:developer';

class MockTelemetry {
  static final List<Map<String, dynamic>> _events = [];

  static Future<void> send(Map<String, dynamic> e) async {
    final event = {
      'event_time': DateTime.now().toIso8601String(),
      ...e,
    };
    _events.add(event);
    log('[telemetry] $event');
  }

  static List<Map<String, dynamic>> get events => List.unmodifiable(_events);

  static void clear() => _events.clear();
}
