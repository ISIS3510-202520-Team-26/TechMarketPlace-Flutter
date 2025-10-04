// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  id: const UuidConverter().fromJson(json['id'] as String),
  listingId: const UuidConverter().fromJson(json['listingId'] as String),
  sellerId: const UuidConverter().fromJson(json['sellerId'] as String),
  buyerId: const UuidConverter().fromJson(json['buyerId'] as String),
  offerId: _$JsonConverterFromJson<String, Uuid>(
    json['offerId'],
    const UuidConverter().fromJson,
  ),
  price: const MoneyConverter().fromJson(json['price'] as Map<String, dynamic>),
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  status: $enumDecode(_$OrderStatusEnumMap, json['status']),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'listingId': const UuidConverter().toJson(instance.listingId),
  'sellerId': const UuidConverter().toJson(instance.sellerId),
  'buyerId': const UuidConverter().toJson(instance.buyerId),
  'offerId': _$JsonConverterToJson<String, Uuid>(
    instance.offerId,
    const UuidConverter().toJson,
  ),
  'price': const MoneyConverter().toJson(instance.price),
  'quantity': instance.quantity,
  'status': _$OrderStatusEnumMap[instance.status]!,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$OrderStatusEnumMap = {
  OrderStatus.initiated: 'initiated',
  OrderStatus.pendingPayment: 'pending_payment',
  OrderStatus.escrowHeld: 'escrow_held',
  OrderStatus.shipped: 'shipped',
  OrderStatus.delivered: 'delivered',
  OrderStatus.completed: 'completed',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.disputed: 'disputed',
  OrderStatus.refunded: 'refunded',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) => _OrderDto(
  id: json['id'] as String,
  listingId: json['listing_id'] as String,
  sellerId: json['seller_id'] as String,
  buyerId: json['buyer_id'] as String,
  offerId: json['offer_id'] as String?,
  priceCents: (json['price_cents'] as num).toInt(),
  currency: json['currency'] as String,
  quantity: (json['quantity'] as num).toInt(),
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$OrderDtoToJson(_OrderDto instance) => <String, dynamic>{
  'id': instance.id,
  'listing_id': instance.listingId,
  'seller_id': instance.sellerId,
  'buyer_id': instance.buyerId,
  'offer_id': instance.offerId,
  'price_cents': instance.priceCents,
  'currency': instance.currency,
  'quantity': instance.quantity,
  'status': instance.status,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
