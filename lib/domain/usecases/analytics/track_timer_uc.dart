import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/repositories/analytics_repository.dart';

class TrackTimerUc {
  final AnalyticsRepository repo;
  TrackTimerUc(this.repo);

  Future<Result<String>> start(String key, Map<String, Object?> baseProps) =>
      repo.startTimer(key, baseProps);

  Future<Result<void>> end(String handleId, {Map<String, Object?> extraProps = const {}}) =>
      repo.endTimer(handleId, extraProps: extraProps);
}
