class TelemetryEvent {
  final String name;
  final Map<String, Object?> props;

  const TelemetryEvent(this.name, [this.props = const {}]);

  TelemetryEvent merge(Map<String, Object?> extras) =>
      TelemetryEvent(name, {...props, ...extras});
}
