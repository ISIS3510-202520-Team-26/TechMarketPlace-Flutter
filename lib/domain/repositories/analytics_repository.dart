import 'package:market_flutter/core/utils/result.dart';

abstract class AnalyticsRepository {
  Future<Result<void>> log(String name, Map<String, Object?> props);

  Future<Result<String>> startTimer(String key, Map<String, Object?> baseProps);

  Future<Result<void>> endTimer(String handleId, {Map<String, Object?> extraProps = const {}});
}
