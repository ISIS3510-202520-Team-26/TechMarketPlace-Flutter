// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Device _$DeviceFromJson(Map<String, dynamic> json) => _Device(
  id: const UuidConverter().fromJson(json['id'] as String),
  userId: _$JsonConverterFromJson<String, Uuid>(
    json['userId'],
    const UuidConverter().fromJson,
  ),
  platform: $enumDecode(_$DevicePlatformEnumMap, json['platform']),
  deviceModel: json['deviceModel'] as String?,
  pushTokenEnc: (json['pushTokenEnc'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  isVerified: json['isVerified'] as bool? ?? false,
  metadata:
      json['metadata'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  createdAt: const UtcDateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const UtcDateTimeConverter().fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'userId': _$JsonConverterToJson<String, Uuid>(
    instance.userId,
    const UuidConverter().toJson,
  ),
  'platform': _$DevicePlatformEnumMap[instance.platform]!,
  'deviceModel': instance.deviceModel,
  'pushTokenEnc': instance.pushTokenEnc,
  'isVerified': instance.isVerified,
  'metadata': instance.metadata,
  'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const UtcDateTimeConverter().toJson(instance.updatedAt),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$DevicePlatformEnumMap = {
  DevicePlatform.android: 'android',
  DevicePlatform.ios: 'ios',
  DevicePlatform.web: 'web',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_DeviceDto _$DeviceDtoFromJson(Map<String, dynamic> json) => _DeviceDto(
  id: json['id'] as String,
  userId: json['user_id'] as String?,
  platform: json['platform'] as String,
  deviceModel: json['device_model'] as String?,
  pushTokenEnc: (json['push_token_enc'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  isVerified: json['is_verified'] as bool,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$DeviceDtoToJson(_DeviceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'platform': instance.platform,
      'device_model': instance.deviceModel,
      'push_token_enc': instance.pushTokenEnc,
      'is_verified': instance.isVerified,
      'metadata': instance.metadata,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
