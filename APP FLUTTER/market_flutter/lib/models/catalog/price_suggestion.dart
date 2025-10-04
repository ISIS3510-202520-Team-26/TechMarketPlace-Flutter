import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/money.dart';
import '../commons/converters.dart';

part 'price_suggestion.freezed.dart';
part 'price_suggestion.g.dart';

@freezed
abstract class PriceSuggestion with _$PriceSuggestion {
  const factory PriceSuggestion({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid listingId,
    @MoneyConverter() required Money suggestedPrice,
    required String modelVersion,
    @Default(false) bool accepted,
    @UtcDateTimeConverter() DateTime? acceptedAt,
    @Default(<String, dynamic>{}) Map<String, dynamic> features,
    @UtcDateTimeConverter() required DateTime createdAt,
  }) = _PriceSuggestion;

  factory PriceSuggestion.fromJson(Map<String, dynamic> json) =>
      _$PriceSuggestionFromJson(json);
}

@freezed
abstract class PriceSuggestionDto with _$PriceSuggestionDto {
  const PriceSuggestionDto._();
  const factory PriceSuggestionDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'listing_id') required String listingId,
    @JsonKey(name: 'suggested_price_cents') required int suggestedPriceCents,
    @JsonKey(name: 'model_version') required String modelVersion,
    @JsonKey(name: 'accepted') required bool accepted,
    @JsonKey(name: 'accepted_at') String? acceptedAt,
    @JsonKey(name: 'features') Map<String, dynamic>? features,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'currency') String? currency,
  }) = _PriceSuggestionDto;

  factory PriceSuggestionDto.fromJson(Map<String, dynamic> json) =>
      _$PriceSuggestionDtoFromJson(json);

  PriceSuggestion toDomain({required String defaultCurrency}) =>
      PriceSuggestion(
        id: Uuid.from(id),
        listingId: Uuid.from(listingId),
        suggestedPrice: Money(
          amountCents: suggestedPriceCents,
          currency:
              CurrencyCode.from((currency ?? defaultCurrency).toUpperCase()),
        ),
        modelVersion: modelVersion,
        accepted: accepted,
        acceptedAt:
            acceptedAt == null ? null : DateTime.parse(acceptedAt!).toUtc(),
        features: features ?? <String, dynamic>{},
        createdAt: DateTime.parse(createdAt).toUtc(),
      );

  static PriceSuggestionDto fromDomain(PriceSuggestion p) =>
      PriceSuggestionDto(
        id: p.id.asString,
        listingId: p.listingId.asString,
        suggestedPriceCents: p.suggestedPrice.amountCents,
        modelVersion: p.modelVersion,
        accepted: p.accepted,
        acceptedAt: p.acceptedAt?.toIso8601String(),
        features: p.features,
        createdAt: p.createdAt.toIso8601String(),
        currency: p.suggestedPrice.currency.asString,
      );
}
