// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: const UuidConverter().fromJson(json['id'] as String),
  name: json['name'] as String,
  slug: json['slug'] as String,
  parentId: _$JsonConverterFromJson<String, Uuid>(
    json['parentId'],
    const UuidConverter().fromJson,
  ),
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'name': instance.name,
  'slug': instance.slug,
  'parentId': _$JsonConverterToJson<String, Uuid>(
    instance.parentId,
    const UuidConverter().toJson,
  ),
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

_CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => _CategoryDto(
  id: json['id'] as String,
  name: json['name'] as String,
  slug: json['slug'] as String,
  parentId: json['parent_id'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$CategoryDtoToJson(_CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent_id': instance.parentId,
      'created_at': instance.createdAt,
    };
