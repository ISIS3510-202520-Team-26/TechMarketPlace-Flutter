import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/datasources/remote/api_escrow_payment_ds.dart';
import 'package:market_flutter/domain/repositories/payment_repository.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final ApiEscrowPaymentDs remote;
  PaymentRepositoryImpl(this.remote);

  @override
  Future<Result<bool>> attempt(String orderId, double amount, String currency) async {
    try {
      final ok = await remote.attemptPayment(orderId, amount, currency);
      return Ok(ok);
    } catch (e) {
      return Err(ServerFailure('payment attempt failed: $e'));
    }
  }
}
