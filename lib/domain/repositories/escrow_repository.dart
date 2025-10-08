import 'package:market_flutter/core/utils/result.dart';

abstract class EscrowRepository {
  Future<Result<String>> hold(String orderId);
  Future<Result<String>> release(String orderId);
  Future<Result<String>> dispute(String orderId, String reason);
}
