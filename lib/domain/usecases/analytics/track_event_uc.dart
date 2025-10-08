import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/repositories/analytics_repository.dart';

class TrackEventUc {
  final AnalyticsRepository repo;
  TrackEventUc(this.repo);

  Future<Result<void>> call(String name, Map<String, Object?> props) =>
      repo.log(name, props);
}
