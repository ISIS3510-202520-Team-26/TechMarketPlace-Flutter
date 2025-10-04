// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'escrow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Escrow _$EscrowFromJson(Map<String, dynamic> json) => _Escrow(
  id: const UuidConverter().fromJson(json['id'] as String),
  orderId: const UuidConverter().fromJson(json['orderId'] as String),
  status: $enumDecode(_$EscrowStatusEnumMap, json['status']),
  heldAmount: const MoneyConverter().fromJson(
    json['heldAmount'] as Map<String, dynamic>,
  ),
  provider: json['provider'] as String,
  openedAt: const UtcDateTimeConverter().fromJson(json['openedAt'] as String),
  releasedAt: _$JsonConverterFromJson<String, DateTime>(
    json['releasedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  refundedAt: _$JsonConverterFromJson<String, DateTime>(
    json['refundedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$EscrowToJson(_Escrow instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'orderId': const UuidConverter().toJson(instance.orderId),
  'status': _$EscrowStatusEnumMap[instance.status]!,
  'heldAmount': const MoneyConverter().toJson(instance.heldAmount),
  'provider': instance.provider,
  'openedAt': const UtcDateTimeConverter().toJson(instance.openedAt),
  'releasedAt': _$JsonConverterToJson<String, DateTime>(
    instance.releasedAt,
    const UtcDateTimeConverter().toJson,
  ),
  'refundedAt': _$JsonConverterToJson<String, DateTime>(
    instance.refundedAt,
    const UtcDateTimeConverter().toJson,
  ),
};

const _$EscrowStatusEnumMap = {
  EscrowStatus.opened: 'opened',
  EscrowStatus.held: 'held',
  EscrowStatus.released: 'released',
  EscrowStatus.refunded: 'refunded',
  EscrowStatus.cancelled: 'cancelled',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_EscrowDto _$EscrowDtoFromJson(Map<String, dynamic> json) => _EscrowDto(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  status: json['status'] as String,
  heldAmountCents: (json['held_amount_cents'] as num).toInt(),
  currency: json['currency'] as String,
  provider: json['provider'] as String,
  openedAt: json['opened_at'] as String,
  releasedAt: json['released_at'] as String?,
  refundedAt: json['refunded_at'] as String?,
);

Map<String, dynamic> _$EscrowDtoToJson(_EscrowDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'status': instance.status,
      'held_amount_cents': instance.heldAmountCents,
      'currency': instance.currency,
      'provider': instance.provider,
      'opened_at': instance.openedAt,
      'released_at': instance.releasedAt,
      'refunded_at': instance.refundedAt,
    };
