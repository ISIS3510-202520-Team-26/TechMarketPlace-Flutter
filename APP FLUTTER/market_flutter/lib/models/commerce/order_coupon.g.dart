// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderCoupon _$OrderCouponFromJson(Map<String, dynamic> json) => _OrderCoupon(
  id: const UuidConverter().fromJson(json['id'] as String),
  orderId: const UuidConverter().fromJson(json['orderId'] as String),
  couponId: const UuidConverter().fromJson(json['couponId'] as String),
  amountAppliedCents: (json['amountAppliedCents'] as num).toInt(),
);

Map<String, dynamic> _$OrderCouponToJson(_OrderCoupon instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'orderId': const UuidConverter().toJson(instance.orderId),
      'couponId': const UuidConverter().toJson(instance.couponId),
      'amountAppliedCents': instance.amountAppliedCents,
    };

_OrderCouponDto _$OrderCouponDtoFromJson(Map<String, dynamic> json) =>
    _OrderCouponDto(
      id: json['id'] as String,
      orderId: json['order_id'] as String,
      couponId: json['coupon_id'] as String,
      amountAppliedCents: (json['amount_applied_cents'] as num).toInt(),
    );

Map<String, dynamic> _$OrderCouponDtoToJson(_OrderCouponDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'coupon_id': instance.couponId,
      'amount_applied_cents': instance.amountAppliedCents,
    };
