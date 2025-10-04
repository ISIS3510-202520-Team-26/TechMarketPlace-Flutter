import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'coupon.freezed.dart';
part 'coupon.g.dart';

@freezed
abstract class Coupon with _$Coupon {
  const factory Coupon({
    @UuidConverter() required Uuid id,
    required String code,
    String? description,
    required DiscountType discountType,
    int? amountCents,
    String? currency,
    @Default(<String, dynamic>{}) Map<String, dynamic> constraints,
    required CouponStatus status,
    @UtcDateTimeConverter() required DateTime validFrom,
    @UtcDateTimeConverter() required DateTime validTo,
    int? maxUses,
    int? maxUsesPerUser,
    @UuidConverter() Uuid? createdBy,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}

@freezed
abstract class CouponDto with _$CouponDto {
  const CouponDto._();
  const factory CouponDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'discount_type') required String discountType,
    @JsonKey(name: 'amount_cents') int? amountCents,
    @JsonKey(name: 'currency') String? currency,
    @JsonKey(name: 'constraints') Map<String, dynamic>? constraints,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'valid_from') required String validFrom,
    @JsonKey(name: 'valid_to') required String validTo,
    @JsonKey(name: 'max_uses') int? maxUses,
    @JsonKey(name: 'max_uses_per_user') int? maxUsesPerUser,
    @JsonKey(name: 'created_by') String? createdBy,
  }) = _CouponDto;

  factory CouponDto.fromJson(Map<String, dynamic> json) =>
      _$CouponDtoFromJson(json);

  Coupon toDomain() => Coupon(
        id: Uuid.from(id),
        code: code,
        description: description,
        discountType:
            DiscountType.values.firstWhere((e) => e.name == discountType),
        amountCents: amountCents,
        currency: currency,
        constraints: constraints ?? <String, dynamic>{},
        status: CouponStatus.values.firstWhere((e) => e.name == status),
        validFrom: DateTime.parse(validFrom).toUtc(),
        validTo: DateTime.parse(validTo).toUtc(),
        maxUses: maxUses,
        maxUsesPerUser: maxUsesPerUser,
        createdBy: createdBy == null ? null : Uuid.from(createdBy!),
      );

  static CouponDto fromDomain(Coupon c) => CouponDto(
        id: c.id.asString,
        code: c.code,
        description: c.description,
        discountType: c.discountType.name,
        amountCents: c.amountCents,
        currency: c.currency,
        constraints: c.constraints,
        status: c.status.name,
        validFrom: c.validFrom.toIso8601String(),
        validTo: c.validTo.toIso8601String(),
        maxUses: c.maxUses,
        maxUsesPerUser: c.maxUsesPerUser,
        createdBy: c.createdBy?.asString,
      );
}
