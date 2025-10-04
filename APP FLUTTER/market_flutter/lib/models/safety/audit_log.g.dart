// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audit_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuditLog _$AuditLogFromJson(Map<String, dynamic> json) => _AuditLog(
  id: const UuidConverter().fromJson(json['id'] as String),
  actorUserId: _$JsonConverterFromJson<String, Uuid>(
    json['actorUserId'],
    const UuidConverter().fromJson,
  ),
  action: json['action'] as String,
  entityType: json['entityType'] as String,
  entityId: const UuidConverter().fromJson(json['entityId'] as String),
  dataBefore:
      json['dataBefore'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  dataAfter:
      json['dataAfter'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  ip: json['ip'] as String?,
  userAgent: json['userAgent'] as String?,
  occurredAt: const UtcDateTimeConverter().fromJson(
    json['occurredAt'] as String,
  ),
);

Map<String, dynamic> _$AuditLogToJson(_AuditLog instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'actorUserId': _$JsonConverterToJson<String, Uuid>(
    instance.actorUserId,
    const UuidConverter().toJson,
  ),
  'action': instance.action,
  'entityType': instance.entityType,
  'entityId': const UuidConverter().toJson(instance.entityId),
  'dataBefore': instance.dataBefore,
  'dataAfter': instance.dataAfter,
  'ip': instance.ip,
  'userAgent': instance.userAgent,
  'occurredAt': const UtcDateTimeConverter().toJson(instance.occurredAt),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_AuditLogDto _$AuditLogDtoFromJson(Map<String, dynamic> json) => _AuditLogDto(
  id: json['id'] as String,
  actorUserId: json['actor_user_id'] as String?,
  action: json['action'] as String,
  entityType: json['entity_type'] as String,
  entityId: json['entity_id'] as String,
  dataBefore: json['data_before'] as Map<String, dynamic>?,
  dataAfter: json['data_after'] as Map<String, dynamic>?,
  ip: json['ip'] as String?,
  userAgent: json['user_agent'] as String?,
  occurredAt: json['occurred_at'] as String,
);

Map<String, dynamic> _$AuditLogDtoToJson(_AuditLogDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'actor_user_id': instance.actorUserId,
      'action': instance.action,
      'entity_type': instance.entityType,
      'entity_id': instance.entityId,
      'data_before': instance.dataBefore,
      'data_after': instance.dataAfter,
      'ip': instance.ip,
      'user_agent': instance.userAgent,
      'occurred_at': instance.occurredAt,
    };
