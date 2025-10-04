// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
  id: const UuidConverter().fromJson(json['id'] as String),
  listingId: _$JsonConverterFromJson<String, Uuid>(
    json['listingId'],
    const UuidConverter().fromJson,
  ),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'listingId': _$JsonConverterToJson<String, Uuid>(
    instance.listingId,
    const UuidConverter().toJson,
  ),
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_ChatDto _$ChatDtoFromJson(Map<String, dynamic> json) => _ChatDto(
  id: json['id'] as String,
  listingId: json['listing_id'] as String?,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$ChatDtoToJson(_ChatDto instance) => <String, dynamic>{
  'id': instance.id,
  'listing_id': instance.listingId,
  'created_at': instance.createdAt,
  'updated_at': instance.updatedAt,
};
