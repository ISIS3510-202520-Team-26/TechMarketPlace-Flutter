// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppNotification _$AppNotificationFromJson(Map<String, dynamic> json) =>
    _AppNotification(
      id: const UuidConverter().fromJson(json['id'] as String),
      userId: const UuidConverter().fromJson(json['userId'] as String),
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String?,
      data: json['data'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      sentVia: $enumDecode(_$NotificationViaEnumMap, json['sentVia']),
      status: $enumDecode(_$NotificationStatusEnumMap, json['status']),
      createdAt: const UtcDateTimeConverter().fromJson(
        json['createdAt'] as String,
      ),
      readAt: _$JsonConverterFromJson<String, DateTime>(
        json['readAt'],
        const UtcDateTimeConverter().fromJson,
      ),
    );

Map<String, dynamic> _$AppNotificationToJson(_AppNotification instance) =>
    <String, dynamic>{
      'id': const UuidConverter().toJson(instance.id),
      'userId': const UuidConverter().toJson(instance.userId),
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data,
      'sentVia': _$NotificationViaEnumMap[instance.sentVia]!,
      'status': _$NotificationStatusEnumMap[instance.status]!,
      'createdAt': const UtcDateTimeConverter().toJson(instance.createdAt),
      'readAt': _$JsonConverterToJson<String, DateTime>(
        instance.readAt,
        const UtcDateTimeConverter().toJson,
      ),
    };

const _$NotificationViaEnumMap = {
  NotificationVia.push: 'push',
  NotificationVia.email: 'email',
  NotificationVia.inapp: 'inapp',
};

const _$NotificationStatusEnumMap = {
  NotificationStatus.queued: 'queued',
  NotificationStatus.sent: 'sent',
  NotificationStatus.failed: 'failed',
  NotificationStatus.read: 'read',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_AppNotificationDto _$AppNotificationDtoFromJson(Map<String, dynamic> json) =>
    _AppNotificationDto(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      body: json['body'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      sentVia: json['sent_via'] as String,
      status: json['status'] as String,
      createdAt: json['created_at'] as String,
      readAt: json['read_at'] as String?,
    );

Map<String, dynamic> _$AppNotificationDtoToJson(_AppNotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'data': instance.data,
      'sent_via': instance.sentVia,
      'status': instance.status,
      'created_at': instance.createdAt,
      'read_at': instance.readAt,
    };
