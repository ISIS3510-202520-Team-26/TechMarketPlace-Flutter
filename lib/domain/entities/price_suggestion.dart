import 'package:freezed_annotation/freezed_annotation.dart';
import '../value_objects/money.dart';

part 'price_suggestion.freezed.dart';

@freezed
abstract class PriceSuggestion with _$PriceSuggestion {
  const PriceSuggestion._();

  const factory PriceSuggestion({
    required String listingId,
    required Money suggestedPrice,
    required String strategy, 
    @Default(false) bool accepted,
  }) = _PriceSuggestion;

  PriceSuggestion accept(Money price) =>
      copyWith(suggestedPrice: price, accepted: true);
}
