import 'package:market_flutter/core/utils/result.dart';

abstract class FeatureFlagRepository {
  Future<Result<bool>> isEnabled(String key);
}
