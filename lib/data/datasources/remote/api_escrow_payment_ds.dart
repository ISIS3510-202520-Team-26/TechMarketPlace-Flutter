import 'package:market_flutter/data/adapters/mock/mock_api_client.dart';

class ApiEscrowPaymentDs {
  final MockApiClient _client;
  ApiEscrowPaymentDs(this._client);

  Future<bool> attemptPayment(String orderId, double amount, String currency) =>
      _client.attemptPayment(orderId, amount, currency);

  Future<String> hold(String orderId) => _client.escrowHold(orderId);

  Future<String> release(String orderId) => _client.escrowRelease(orderId);

  Future<String> dispute(String orderId, String reason) =>
      _client.escrowDispute(orderId, reason);
}
