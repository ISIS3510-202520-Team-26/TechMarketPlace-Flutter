class Timed<T> {
  final T result;
  final Duration elapsed;
  const Timed(this.result, this.elapsed);

  int get durationMs => elapsed.inMilliseconds;
}

int nowMs() => DateTime.now().millisecondsSinceEpoch;

int elapsedMs(DateTime start) =>
    DateTime.now().difference(start).inMilliseconds;

String fmtDuration(Duration d) {
  final ms = d.inMilliseconds % 1000;
  final s = d.inSeconds % 60;
  final m = d.inMinutes % 60;
  final h = d.inHours;
  if (h > 0) return '${h}h ${m}m ${s}s';
  if (m > 0) return '${m}m ${s}s';
  if (s > 0) return '${s}s ${ms}ms';
  return '${ms}ms';
}

Future<Timed<T>> measure<T>(Future<T> Function() fn) async {
  final start = DateTime.now();
  final out = await fn();
  return Timed(out, DateTime.now().difference(start));
}
