abstract class TelemetrySink {
  Future<void> log(String name, Map<String, Object?> props);

  Future<void> flush() async {}
}
