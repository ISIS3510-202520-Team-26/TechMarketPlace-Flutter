// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingDto _$ListingDtoFromJson(Map<String, dynamic> json) => ListingDto(
  id: json['id'] as String,
  sellerId: json['sellerId'] as String,
  priceAmount: (json['priceAmount'] as num).toDouble(),
  priceCurrency: json['priceCurrency'] as String,
  campus: json['campus'] as String?,
  photos:
      (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  type: json['type'] as String,
  details: json['details'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$ListingDtoToJson(ListingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerId': instance.sellerId,
      'priceAmount': instance.priceAmount,
      'priceCurrency': instance.priceCurrency,
      'campus': instance.campus,
      'photos': instance.photos,
      'type': instance.type,
      'details': instance.details,
    };
