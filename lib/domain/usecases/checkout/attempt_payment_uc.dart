import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/repositories/payment_repository.dart';
import 'package:market_flutter/domain/repositories/escrow_repository.dart';

class AttemptPaymentUc {
  final PaymentRepository paymentRepo;
  final EscrowRepository escrowRepo;

  AttemptPaymentUc(this.paymentRepo, this.escrowRepo);

  Future<Result<bool>> call({
    required String orderId,
    required double amount,
    required String currency,
  }) async {
    final r = await paymentRepo.attempt(orderId, amount, currency);
    if (r.isOk) {
      await escrowRepo.hold(orderId);
    }
    return r;
  }
}
