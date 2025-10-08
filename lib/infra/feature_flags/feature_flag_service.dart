import 'dart:async';

class FeatureFlagService {
  final Map<String, bool> _flags;
  final _controller = StreamController<Map<String, bool>>.broadcast();

  FeatureFlagService({Map<String, bool>? initial})
      : _flags = Map.of(initial ?? const {});

  bool isEnabled(String key) => _flags[key] ?? false;

  void set(String key, bool enabled) {
    _flags[key] = enabled;
    _controller.add(Map.of(_flags));
  }

  Stream<Map<String, bool>> watch() => _controller.stream;

  void dispose() {
    _controller.close();
  }
}
