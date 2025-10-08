import 'dart:math';

class MockPriceSuggestionEngine {
  Future<Map<String, dynamic>> suggest(String listingId, double base, String currency) async {
    final rnd = Random().nextDouble();
    final suggested = (base * (0.85 + rnd * 0.3));
    return {
      'listingId': listingId,
      'suggestedAmount': double.parse(suggested.toStringAsFixed(2)),
      'currency': currency,
      'strategy': 'median',
    };
  }
}
