import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/repositories/escrow_repository.dart';

class ConfirmEscrowUc {
  final EscrowRepository repo;
  ConfirmEscrowUc(this.repo);

  Future<Result<String>> call(String orderId) => repo.release(orderId);
}
