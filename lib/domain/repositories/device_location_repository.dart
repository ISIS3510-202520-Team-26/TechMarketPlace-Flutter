import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/value_objects/campus.dart';

abstract class DeviceLocationRepository {
  Future<Result<Campus?>> currentCampus();
}
