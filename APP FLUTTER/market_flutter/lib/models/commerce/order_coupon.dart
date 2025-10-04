import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'order_coupon.freezed.dart';
part 'order_coupon.g.dart';

@freezed
abstract class OrderCoupon with _$OrderCoupon {
  const factory OrderCoupon({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid orderId,
    @UuidConverter() required Uuid couponId,
    required int amountAppliedCents,
  }) = _OrderCoupon;

  factory OrderCoupon.fromJson(Map<String, dynamic> json) =>
      _$OrderCouponFromJson(json);
}

@freezed
abstract class OrderCouponDto with _$OrderCouponDto {
  const OrderCouponDto._();
  const factory OrderCouponDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'coupon_id') required String couponId,
    @JsonKey(name: 'amount_applied_cents') required int amountAppliedCents,
  }) = _OrderCouponDto;

  factory OrderCouponDto.fromJson(Map<String, dynamic> json) =>
      _$OrderCouponDtoFromJson(json);

  OrderCoupon toDomain() => OrderCoupon(
        id: Uuid.from(id),
        orderId: Uuid.from(orderId),
        couponId: Uuid.from(couponId),
        amountAppliedCents: amountAppliedCents,
      );

  static OrderCouponDto fromDomain(OrderCoupon oc) => OrderCouponDto(
        id: oc.id.asString,
        orderId: oc.orderId.asString,
        couponId: oc.couponId.asString,
        amountAppliedCents: oc.amountAppliedCents,
      );
}
