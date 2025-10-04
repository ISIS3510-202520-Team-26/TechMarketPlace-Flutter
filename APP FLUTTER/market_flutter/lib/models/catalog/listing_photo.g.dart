// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingPhoto _$ListingPhotoFromJson(Map<String, dynamic> json) =>
    _ListingPhoto(
      id: const UuidConverter().fromJson(json['id'] as String),
      listingId: const UuidConverter().fromJson(json['listingId'] as String),
      url: json['url'] as String,
      altText: json['altText'] as String?,
      position: (json['position'] as num?)?.toInt() ?? 0,
      isPrimary: json['isPrimary'] as bool? ?? false,
      createdAt: const UtcDateTimeConverter().fromJson(
        json['createdAt'] as String,
      ),
    );

Map<String, dynamic> _$ListingPhotoToJson(_ListingPhoto instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'listingId': const UuidConverter().toJson(instance.listingId),
      'url': instance.url,
      'altText': instance.altText,
      'position': instance.position,
      'isPrimary': instance.isPrimary,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
    };

_ListingPhotoDto _$ListingPhotoDtoFromJson(Map<String, dynamic> json) =>
    _ListingPhotoDto(
      id: json['id'] as String,
      listingId: json['listing_id'] as String,
      url: json['url'] as String,
      altText: json['alt_text'] as String?,
      position: (json['position'] as num).toInt(),
      isPrimary: json['is_primary'] as bool,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$ListingPhotoDtoToJson(_ListingPhotoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing_id': instance.listingId,
      'url': instance.url,
      'alt_text': instance.altText,
      'position': instance.position,
      'is_primary': instance.isPrimary,
      'created_at': instance.createdAt,
    };
