// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceSuggestion _$PriceSuggestionFromJson(
  Map<String, dynamic> json,
) => _PriceSuggestion(
  id: const UuidConverter().fromJson(json['id'] as String),
  listingId: const UuidConverter().fromJson(json['listingId'] as String),
  suggestedPrice: const MoneyConverter().fromJson(
    json['suggestedPrice'] as Map<String, dynamic>,
  ),
  modelVersion: json['modelVersion'] as String,
  accepted: json['accepted'] as bool? ?? false,
  acceptedAt: _$JsonConverterFromJson<String, DateTime>(
    json['acceptedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  features:
      json['features'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
);

Map<String, dynamic> _$PriceSuggestionToJson(_PriceSuggestion instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'listingId': const UuidConverter().toJson(instance.listingId),
      'suggestedPrice': const MoneyConverter().toJson(instance.suggestedPrice),
      'modelVersion': instance.modelVersion,
      'accepted': instance.accepted,
      'acceptedAt': _$JsonConverterToJson<String, DateTime>(
        instance.acceptedAt,
        const UtcDateTimeConverter().toJson,
      ),
      'features': instance.features,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_PriceSuggestionDto _$PriceSuggestionDtoFromJson(Map<String, dynamic> json) =>
    _PriceSuggestionDto(
      id: json['id'] as String,
      listingId: json['listing_id'] as String,
      suggestedPriceCents: (json['suggested_price_cents'] as num).toInt(),
      modelVersion: json['model_version'] as String,
      accepted: json['accepted'] as bool,
      acceptedAt: json['accepted_at'] as String?,
      features: json['features'] as Map<String, dynamic>?,
      createdAt: json['created_at'] as String,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$PriceSuggestionDtoToJson(_PriceSuggestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing_id': instance.listingId,
      'suggested_price_cents': instance.suggestedPriceCents,
      'model_version': instance.modelVersion,
      'accepted': instance.accepted,
      'accepted_at': instance.acceptedAt,
      'features': instance.features,
      'created_at': instance.createdAt,
      'currency': instance.currency,
    };
