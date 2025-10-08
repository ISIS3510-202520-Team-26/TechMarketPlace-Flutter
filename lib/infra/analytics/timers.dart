import 'dart:math';

class Timers {
  final Map<String, _TimerEntry> _entries = {};

  String start(String key, Map<String, Object?> baseProps) {
    final handle = '${key}_${DateTime.now().microsecondsSinceEpoch}_${_rand(6)}';
    _entries[handle] = _TimerEntry(key, DateTime.now(), Map.of(baseProps));
    return handle;
  }

  Map<String, Object?> end(String handle, {Map<String, Object?> extraProps = const {}}) {
    final e = _entries.remove(handle);
    final now = DateTime.now();
    final durationMs = e == null ? 0 : now.difference(e.startedAt).inMilliseconds;
    return {
      ...?e?.baseProps,
      ...extraProps,
      'duration_ms': durationMs,
    };
  }

  static String _rand(int len) {
    const alphabet = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final rng = Random();
    return List.generate(len, (_) => alphabet[rng.nextInt(alphabet.length)]).join();
  }
}

class _TimerEntry {
  final String key;
  final DateTime startedAt;
  final Map<String, Object?> baseProps;
  _TimerEntry(this.key, this.startedAt, this.baseProps);
}
