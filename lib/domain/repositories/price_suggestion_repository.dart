import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/price_suggestion.dart';
import 'package:market_flutter/domain/value_objects/money.dart';

abstract class PriceSuggestionRepository {
  Future<Result<PriceSuggestion>> suggest(String listingId, double base, String currency);
  Future<Result<void>> accept(String listingId, Money price);
}
