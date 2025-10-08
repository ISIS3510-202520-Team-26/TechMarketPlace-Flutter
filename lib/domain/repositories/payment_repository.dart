import 'package:market_flutter/core/utils/result.dart';

abstract class PaymentRepository {
  Future<Result<bool>> attempt(String orderId, double amount, String currency);
}
