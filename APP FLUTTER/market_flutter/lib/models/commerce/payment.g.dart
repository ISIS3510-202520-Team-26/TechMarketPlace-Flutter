// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Payment _$PaymentFromJson(Map<String, dynamic> json) => _Payment(
  id: const UuidConverter().fromJson(json['id'] as String),
  orderId: const UuidConverter().fromJson(json['orderId'] as String),
  provider: json['provider'] as String,
  providerIntentId: json['providerIntentId'] as String?,
  status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
  amount: const MoneyConverter().fromJson(
    json['amount'] as Map<String, dynamic>,
  ),
  feeCents: (json['feeCents'] as num?)?.toInt(),
  occurredAt: const UtcDateTimeConverter().fromJson(
    json['occurredAt'] as String,
  ),
  paymentMethod:
      json['paymentMethod'] as Map<String, dynamic>? ??
      const <String, dynamic>{},
  idempotencyKey: json['idempotencyKey'] as String,
);

Map<String, dynamic> _$PaymentToJson(_Payment instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'orderId': const UuidConverter().toJson(instance.orderId),
  'provider': instance.provider,
  'providerIntentId': instance.providerIntentId,
  'status': _$PaymentStatusEnumMap[instance.status]!,
  'amount': const MoneyConverter().toJson(instance.amount),
  'feeCents': instance.feeCents,
  'occurredAt': const UtcDateTimeConverter().toJson(instance.occurredAt),
  'paymentMethod': instance.paymentMethod,
  'idempotencyKey': instance.idempotencyKey,
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.requiresAction: 'requires_action',
  PaymentStatus.authorized: 'authorized',
  PaymentStatus.captured: 'captured',
  PaymentStatus.failed: 'failed',
  PaymentStatus.refunded: 'refunded',
};

_PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) => _PaymentDto(
  id: json['id'] as String,
  orderId: json['order_id'] as String,
  provider: json['provider'] as String,
  providerIntentId: json['provider_intent_id'] as String?,
  status: json['status'] as String,
  amountCents: (json['amount_cents'] as num).toInt(),
  feeCents: (json['fee_cents'] as num?)?.toInt(),
  currency: json['currency'] as String,
  paymentMethod: json['payment_method'] as Map<String, dynamic>?,
  idempotencyKey: json['idempotency_key'] as String,
  occurredAt: json['occurred_at'] as String,
);

Map<String, dynamic> _$PaymentDtoToJson(_PaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'provider': instance.provider,
      'provider_intent_id': instance.providerIntentId,
      'status': instance.status,
      'amount_cents': instance.amountCents,
      'fee_cents': instance.feeCents,
      'currency': instance.currency,
      'payment_method': instance.paymentMethod,
      'idempotency_key': instance.idempotencyKey,
      'occurred_at': instance.occurredAt,
    };
