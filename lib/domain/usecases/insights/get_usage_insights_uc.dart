import 'package:market_flutter/core/utils/result.dart';

class GetUsageInsightsUc {
  const GetUsageInsightsUc();

  Future<Result<Map<String, Object?>>> call({
    required DateTime from,
    required DateTime to,
  }) async {
    final days = to.difference(from).inDays.abs();
    return Ok(<String, Object?>{
      'range_days': days,
      'events_count': days * 5,
      'unique_users': (days * 1.2).round(),
    });
  }
}
