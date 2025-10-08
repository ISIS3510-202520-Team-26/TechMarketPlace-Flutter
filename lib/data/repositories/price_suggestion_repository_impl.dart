import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/adapters/mock/mock_price_suggestion_engine.dart';
import 'package:market_flutter/domain/entities/price_suggestion.dart';
import 'package:market_flutter/domain/repositories/price_suggestion_repository.dart';
import 'package:market_flutter/domain/value_objects/money.dart';

class PriceSuggestionRepositoryImpl implements PriceSuggestionRepository {
  final MockPriceSuggestionEngine engine;
  PriceSuggestionRepositoryImpl(this.engine);

  @override
  Future<Result<PriceSuggestion>> suggest(String listingId, double base, String currency) async {
    try {
      final s = await engine.suggest(listingId, base, currency);
      return Ok(PriceSuggestion(
        listingId: s['listingId'] as String,
        suggestedPrice: Money(amount: s['suggestedAmount'] as double, currency: s['currency'] as String),
        strategy: s['strategy'] as String,
        accepted: false,
      ));
    } catch (e) {
      return Err(ServerFailure('suggestion failed: $e'));
    }
  }

  @override
  Future<Result<void>> accept(String listingId, Money price) async {
    // Mock: no persistimos nada
    return Ok(null);
  }
}
