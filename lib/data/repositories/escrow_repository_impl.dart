import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/datasources/remote/api_escrow_payment_ds.dart';
import 'package:market_flutter/domain/repositories/escrow_repository.dart';

class EscrowRepositoryImpl implements EscrowRepository {
  final ApiEscrowPaymentDs remote;
  EscrowRepositoryImpl(this.remote);

  @override
  Future<Result<String>> hold(String orderId) async {
    try {
      final s = await remote.hold(orderId);
      return Ok(s);
    } catch (e) {
      return Err(ServerFailure('escrow hold failed: $e'));
    }
  }

  @override
  Future<Result<String>> release(String orderId) async {
    try {
      final s = await remote.release(orderId);
      return Ok(s);
    } catch (e) {
      return Err(ServerFailure('escrow release failed: $e'));
    }
  }

  @override
  Future<Result<String>> dispute(String orderId, String reason) async {
    try {
      final s = await remote.dispute(orderId, reason);
      return Ok(s);
    } catch (e) {
      return Err(ServerFailure('escrow dispute failed: $e'));
    }
  }
}
