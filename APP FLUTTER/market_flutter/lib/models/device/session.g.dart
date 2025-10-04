// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Session _$SessionFromJson(Map<String, dynamic> json) => _Session(
  id: const UuidConverter().fromJson(json['id'] as String),
  userId: _$JsonConverterFromJson<String, Uuid>(
    json['userId'],
    const UuidConverter().fromJson,
  ),
  deviceId: _$JsonConverterFromJson<String, Uuid>(
    json['deviceId'],
    const UuidConverter().fromJson,
  ),
  appVersion: json['appVersion'] as String?,
  osVersion: json['osVersion'] as String?,
  locale: json['locale'] as String?,
  timezone: json['timezone'] as String?,
  startedAt: const UtcDateTimeConverter().fromJson(json['startedAt'] as String),
  lastActivityAt: const UtcDateTimeConverter().fromJson(
    json['lastActivityAt'] as String,
  ),
  endedAt: _$JsonConverterFromJson<String, DateTime>(
    json['endedAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$SessionToJson(_Session instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'userId': _$JsonConverterToJson<String, Uuid>(
    instance.userId,
    const UuidConverter().toJson,
  ),
  'deviceId': _$JsonConverterToJson<String, Uuid>(
    instance.deviceId,
    const UuidConverter().toJson,
  ),
  'appVersion': instance.appVersion,
  'osVersion': instance.osVersion,
  'locale': instance.locale,
  'timezone': instance.timezone,
  'startedAt': const UtcDateTimeConverter().toJson(instance.startedAt),
  'lastActivityAt': const UtcDateTimeConverter().toJson(
    instance.lastActivityAt,
  ),
  'endedAt': _$JsonConverterToJson<String, DateTime>(
    instance.endedAt,
    const UtcDateTimeConverter().toJson,
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_SessionDto _$SessionDtoFromJson(Map<String, dynamic> json) => _SessionDto(
  id: json['id'] as String,
  userId: json['user_id'] as String?,
  deviceId: json['device_id'] as String?,
  appVersion: json['app_version'] as String?,
  osVersion: json['os_version'] as String?,
  locale: json['locale'] as String?,
  timezone: json['timezone'] as String?,
  startedAt: json['started_at'] as String,
  lastActivityAt: json['last_activity_at'] as String,
  endedAt: json['ended_at'] as String?,
);

Map<String, dynamic> _$SessionDtoToJson(_SessionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'device_id': instance.deviceId,
      'app_version': instance.appVersion,
      'os_version': instance.osVersion,
      'locale': instance.locale,
      'timezone': instance.timezone,
      'started_at': instance.startedAt,
      'last_activity_at': instance.lastActivityAt,
      'ended_at': instance.endedAt,
    };
