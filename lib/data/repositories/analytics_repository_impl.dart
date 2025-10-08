import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/infra/analytics/telemetry_service.dart';
import 'package:market_flutter/infra/analytics/timers.dart';
import 'package:market_flutter/domain/repositories/analytics_repository.dart';

class AnalyticsRepositoryImpl implements AnalyticsRepository {
  final TelemetryService telemetry;
  final Timers timers;

  AnalyticsRepositoryImpl({required this.telemetry, required this.timers});

  @override
  Future<Result<void>> log(String name, Map<String, Object?> props) async {
    try {
      await telemetry.logEvent(name, props);
      return Ok(null);
    } catch (e) {
      return Err(ServerFailure('logEvent failed: $e'));
    }
  }

  @override
  Future<Result<String>> startTimer(String key, Map<String, Object?> baseProps) async {
    try {
      final h = telemetry.startTimer(key, baseProps);
      return Ok(h);
    } catch (e) {
      return Err(ServerFailure('startTimer failed: $e'));
    }
  }

  @override
  Future<Result<void>> endTimer(String handleId, {Map<String, Object?> extraProps = const {}}) async {
    try {
      await telemetry.endTimer(handleId, extraProps: extraProps);
      return Ok(null);
    } catch (e) {
      return Err(ServerFailure('endTimer failed: $e'));
    }
  }
}
