// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Coupon _$CouponFromJson(Map<String, dynamic> json) => _Coupon(
  id: const UuidConverter().fromJson(json['id'] as String),
  code: json['code'] as String,
  description: json['description'] as String?,
  discountType: $enumDecode(_$DiscountTypeEnumMap, json['discountType']),
  amountCents: (json['amountCents'] as num?)?.toInt(),
  currency: json['currency'] as String?,
  constraints:
      json['constraints'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  status: $enumDecode(_$CouponStatusEnumMap, json['status']),
  validFrom: const UtcDateTimeConverter().fromJson(json['validFrom'] as String),
  validTo: const UtcDateTimeConverter().fromJson(json['validTo'] as String),
  maxUses: (json['maxUses'] as num?)?.toInt(),
  maxUsesPerUser: (json['maxUsesPerUser'] as num?)?.toInt(),
  createdBy: _$JsonConverterFromJson<String, Uuid>(
    json['createdBy'],
    const UuidConverter().fromJson,
  ),
);

Map<String, dynamic> _$CouponToJson(_Coupon instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'code': instance.code,
  'description': instance.description,
  'discountType': _$DiscountTypeEnumMap[instance.discountType]!,
  'amountCents': instance.amountCents,
  'currency': instance.currency,
  'constraints': instance.constraints,
  'status': _$CouponStatusEnumMap[instance.status]!,
  'validFrom': const UtcDateTimeConverter().toJson(instance.validFrom),
  'validTo': const UtcDateTimeConverter().toJson(instance.validTo),
  'maxUses': instance.maxUses,
  'maxUsesPerUser': instance.maxUsesPerUser,
  'createdBy': _$JsonConverterToJson<String, Uuid>(
    instance.createdBy,
    const UuidConverter().toJson,
  ),
};

const _$DiscountTypeEnumMap = {
  DiscountType.percent: 'percent',
  DiscountType.fixed: 'fixed',
};

const _$CouponStatusEnumMap = {
  CouponStatus.active: 'active',
  CouponStatus.inactive: 'inactive',
  CouponStatus.expired: 'expired',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_CouponDto _$CouponDtoFromJson(Map<String, dynamic> json) => _CouponDto(
  id: json['id'] as String,
  code: json['code'] as String,
  description: json['description'] as String?,
  discountType: json['discount_type'] as String,
  amountCents: (json['amount_cents'] as num?)?.toInt(),
  currency: json['currency'] as String?,
  constraints: json['constraints'] as Map<String, dynamic>?,
  status: json['status'] as String,
  validFrom: json['valid_from'] as String,
  validTo: json['valid_to'] as String,
  maxUses: (json['max_uses'] as num?)?.toInt(),
  maxUsesPerUser: (json['max_uses_per_user'] as num?)?.toInt(),
  createdBy: json['created_by'] as String?,
);

Map<String, dynamic> _$CouponDtoToJson(_CouponDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'discount_type': instance.discountType,
      'amount_cents': instance.amountCents,
      'currency': instance.currency,
      'constraints': instance.constraints,
      'status': instance.status,
      'valid_from': instance.validFrom,
      'valid_to': instance.validTo,
      'max_uses': instance.maxUses,
      'max_uses_per_user': instance.maxUsesPerUser,
      'created_by': instance.createdBy,
    };
