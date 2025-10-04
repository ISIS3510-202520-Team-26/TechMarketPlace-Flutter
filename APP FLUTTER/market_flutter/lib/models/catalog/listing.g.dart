// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Listing _$ListingFromJson(Map<String, dynamic> json) => _Listing(
  id: const UuidConverter().fromJson(json['id'] as String),
  sellerId: const UuidConverter().fromJson(json['sellerId'] as String),
  categoryId: const UuidConverter().fromJson(json['categoryId'] as String),
  brandId: _$JsonConverterFromJson<String, Uuid>(
    json['brandId'],
    const UuidConverter().fromJson,
  ),
  locationId: _$JsonConverterFromJson<String, Uuid>(
    json['locationId'],
    const UuidConverter().fromJson,
  ),
  title: json['title'] as String,
  description: json['description'] as String?,
  price: const MoneyConverter().fromJson(json['price'] as Map<String, dynamic>),
  condition: $enumDecode(_$ListingConditionEnumMap, json['condition']),
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  mediaCount: (json['mediaCount'] as num?)?.toInt() ?? 0,
  attributes:
      json['attributes'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  shippingOptions:
      (json['shippingOptions'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const <JsonMap>[],
  status: $enumDecode(_$ListingStatusEnumMap, json['status']),
  visibility: $enumDecode(_$ListingVisibilityEnumMap, json['visibility']),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
  deletedAt: _$JsonConverterFromJson<String, DateTime>(
    json['deletedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$ListingToJson(_Listing instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'sellerId': const UuidConverter().toJson(instance.sellerId),
  'categoryId': const UuidConverter().toJson(instance.categoryId),
  'brandId': _$JsonConverterToJson<String, Uuid>(
    instance.brandId,
    const UuidConverter().toJson,
  ),
  'locationId': _$JsonConverterToJson<String, Uuid>(
    instance.locationId,
    const UuidConverter().toJson,
  ),
  'title': instance.title,
  'description': instance.description,
  'price': const MoneyConverter().toJson(instance.price),
  'condition': _$ListingConditionEnumMap[instance.condition]!,
  'quantity': instance.quantity,
  'mediaCount': instance.mediaCount,
  'attributes': instance.attributes,
  'shippingOptions': instance.shippingOptions,
  'status': _$ListingStatusEnumMap[instance.status]!,
  'visibility': _$ListingVisibilityEnumMap[instance.visibility]!,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
  'deletedAt': _$JsonConverterToJson<String, DateTime>(
    instance.deletedAt,
    const UtcDateTimeConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$ListingConditionEnumMap = {
  ListingCondition.new_: 'new',
  ListingCondition.used: 'used',
  ListingCondition.refurbished: 'refurbished',
};

const _$ListingStatusEnumMap = {
  ListingStatus.draft: 'draft',
  ListingStatus.active: 'active',
  ListingStatus.reserved: 'reserved',
  ListingStatus.sold: 'sold',
  ListingStatus.archived: 'archived',
  ListingStatus.removed: 'removed',
};

const _$ListingVisibilityEnumMap = {
  ListingVisibility.public_: 'public',
  ListingVisibility.private_: 'private',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_ListingDto _$ListingDtoFromJson(Map<String, dynamic> json) => _ListingDto(
  id: json['id'] as String,
  sellerId: json['seller_id'] as String,
  categoryId: json['category_id'] as String,
  brandId: json['brand_id'] as String?,
  locationId: json['location_id'] as String?,
  title: json['title'] as String,
  description: json['description'] as String?,
  priceCents: (json['price_cents'] as num).toInt(),
  currency: json['currency'] as String,
  condition: json['condition'] as String,
  quantity: (json['quantity'] as num).toInt(),
  mediaCount: (json['media_count'] as num).toInt(),
  attributes: json['attributes'] as Map<String, dynamic>?,
  shippingOptions: json['shipping_options'] as List<dynamic>?,
  status: json['status'] as String,
  visibility: json['visibility'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
  deletedAt: json['deleted_at'] as String?,
);

Map<String, dynamic> _$ListingDtoToJson(_ListingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seller_id': instance.sellerId,
      'category_id': instance.categoryId,
      'brand_id': instance.brandId,
      'location_id': instance.locationId,
      'title': instance.title,
      'description': instance.description,
      'price_cents': instance.priceCents,
      'currency': instance.currency,
      'condition': instance.condition,
      'quantity': instance.quantity,
      'media_count': instance.mediaCount,
      'attributes': instance.attributes,
      'shipping_options': instance.shippingOptions,
      'status': instance.status,
      'visibility': instance.visibility,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
