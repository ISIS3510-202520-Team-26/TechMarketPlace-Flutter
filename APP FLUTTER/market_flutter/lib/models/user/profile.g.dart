// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  userId: const UuidConverter().fromJson(json['userId'] as String),
  displayName: json['displayName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  bio: json['bio'] as String?,
  campus: json['campus'] as String?,
  defaultLocationId: _$JsonConverterFromJson<String, Uuid>(
    json['defaultLocationId'],
    const UuidConverter().fromJson,
  ),
  preferences:
      json['preferences'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  ratingTotal: (json['ratingTotal'] as num?)?.toInt() ?? 0,
  ratingCount: (json['ratingCount'] as num?)?.toInt() ?? 0,
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'userId': const UuidConverter().toJson(instance.userId),
  'displayName': instance.displayName,
  'avatarUrl': instance.avatarUrl,
  'bio': instance.bio,
  'campus': instance.campus,
  'defaultLocationId': _$JsonConverterToJson<String, Uuid>(
    instance.defaultLocationId,
    const UuidConverter().toJson,
  ),
  'preferences': instance.preferences,
  'ratingTotal': instance.ratingTotal,
  'ratingCount': instance.ratingCount,
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

_ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => _ProfileDto(
  userId: json['user_id'] as String,
  displayName: json['display_name'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  bio: json['bio'] as String?,
  campus: json['campus'] as String?,
  defaultLocationId: json['default_location_id'] as String?,
  preferences: json['preferences'] as Map<String, dynamic>?,
  ratingTotal: (json['rating_total'] as num).toInt(),
  ratingCount: (json['rating_count'] as num).toInt(),
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$ProfileDtoToJson(_ProfileDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'display_name': instance.displayName,
      'avatar_url': instance.avatarUrl,
      'bio': instance.bio,
      'campus': instance.campus,
      'default_location_id': instance.defaultLocationId,
      'preferences': instance.preferences,
      'rating_total': instance.ratingTotal,
      'rating_count': instance.ratingCount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
