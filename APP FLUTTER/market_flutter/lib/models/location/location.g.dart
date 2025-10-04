// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppLocation _$AppLocationFromJson(Map<String, dynamic> json) => _AppLocation(
  id: const UuidConverter().fromJson(json['id'] as String),
  userId: _$JsonConverterFromJson<String, Uuid>(
    json['userId'],
    const UuidConverter().fromJson,
  ),
  label: json['label'] as String?,
  lat: (json['lat'] as num).toDouble(),
  lon: (json['lon'] as num).toDouble(),
  geohash: json['geohash'] as String?,
  addressText: json['addressText'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  countryCode: json['countryCode'] as String?,
  postalCode: json['postalCode'] as String?,
  isDefault: json['isDefault'] as bool? ?? false,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
);

Map<String, dynamic> _$AppLocationToJson(_AppLocation instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'userId': _$JsonConverterToJson<String, Uuid>(
        instance.userId,
        const UuidConverter().toJson,
      ),
      'label': instance.label,
      'lat': instance.lat,
      'lon': instance.lon,
      'geohash': instance.geohash,
      'addressText': instance.addressText,
      'city': instance.city,
      'state': instance.state,
      'countryCode': instance.countryCode,
      'postalCode': instance.postalCode,
      'isDefault': instance.isDefault,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_AppLocationDto _$AppLocationDtoFromJson(Map<String, dynamic> json) =>
    _AppLocationDto(
      id: json['id'] as String,
      userId: json['user_id'] as String?,
      label: json['label'] as String?,
      lat: json['lat'] as num,
      lon: json['lon'] as num,
      geohash: json['geohash'] as String?,
      addressText: json['address_text'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      countryCode: json['country_code'] as String?,
      postalCode: json['postal_code'] as String?,
      isDefault: json['is_default'] as bool,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$AppLocationDtoToJson(_AppLocationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'label': instance.label,
      'lat': instance.lat,
      'lon': instance.lon,
      'geohash': instance.geohash,
      'address_text': instance.addressText,
      'city': instance.city,
      'state': instance.state,
      'country_code': instance.countryCode,
      'postal_code': instance.postalCode,
      'is_default': instance.isDefault,
      'created_at': instance.createdAt,
    };
