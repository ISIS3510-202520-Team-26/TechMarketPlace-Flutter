// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Offer _$OfferFromJson(Map<String, dynamic> json) => _Offer(
  id: const UuidConverter().fromJson(json['id'] as String),
  listingId: const UuidConverter().fromJson(json['listingId'] as String),
  buyerId: const UuidConverter().fromJson(json['buyerId'] as String),
  chatId: _$JsonConverterFromJson<String, Uuid>(
    json['chatId'],
    const UuidConverter().fromJson,
  ),
  amount: const MoneyConverter().fromJson(
    json['amount'] as Map<String, dynamic>,
  ),
  status:
      $enumDecodeNullable(_$OfferStatusEnumMap, json['status']) ??
      OfferStatus.proposed,
  counterOf: _$JsonConverterFromJson<String, Uuid>(
    json['counterOf'],
    const UuidConverter().fromJson,
  ),
  expiresAt: _$JsonConverterFromJson<String, DateTime>(
    json['expiresAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
);

Map<String, dynamic> _$OfferToJson(_Offer instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'listingId': const UuidConverter().toJson(instance.listingId),
  'buyerId': const UuidConverter().toJson(instance.buyerId),
  'chatId': _$JsonConverterToJson<String, Uuid>(
    instance.chatId,
    const UuidConverter().toJson,
  ),
  'amount': const MoneyConverter().toJson(instance.amount),
  'status': _$OfferStatusEnumMap[instance.status]!,
  'counterOf': _$JsonConverterToJson<String, Uuid>(
    instance.counterOf,
    const UuidConverter().toJson,
  ),
  'expiresAt': _$JsonConverterToJson<String, DateTime>(
    instance.expiresAt,
    const UtcDateTimeConverter().toJson,
  ),
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$OfferStatusEnumMap = {
  OfferStatus.proposed: 'proposed',
  OfferStatus.accepted: 'accepted',
  OfferStatus.rejected: 'rejected',
  OfferStatus.cancelled: 'cancelled',
  OfferStatus.expired: 'expired',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_OfferDto _$OfferDtoFromJson(Map<String, dynamic> json) => _OfferDto(
  id: json['id'] as String,
  listingId: json['listing_id'] as String,
  buyerId: json['buyer_id'] as String,
  chatId: json['chat_id'] as String?,
  amountCents: (json['amount_cents'] as num).toInt(),
  currency: json['currency'] as String,
  status: json['status'] as String,
  counterOf: json['counter_of'] as String?,
  expiresAt: json['expires_at'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$OfferDtoToJson(_OfferDto instance) => <String, dynamic>{
  'id': instance.id,
  'listing_id': instance.listingId,
  'buyer_id': instance.buyerId,
  'chat_id': instance.chatId,
  'amount_cents': instance.amountCents,
  'currency': instance.currency,
  'status': instance.status,
  'counter_of': instance.counterOf,
  'expires_at': instance.expiresAt,
  'created_at': instance.createdAt,
};
