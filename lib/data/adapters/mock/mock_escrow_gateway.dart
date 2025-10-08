import 'dart:async';

class MockEscrowGateway {
  Future<String> hold(String orderId) async => 'HELD';
  Future<String> release(String orderId) async => 'RELEASED';
  Future<String> dispute(String orderId, String reason) async => 'DISPUTED';
  Future<bool> attempt(String orderId, double amount, String currency) async => true;
}
