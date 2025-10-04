// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  id: const UuidConverter().fromJson(json['id'] as String),
  chatId: const UuidConverter().fromJson(json['chatId'] as String),
  senderId: const UuidConverter().fromJson(json['senderId'] as String),
  type: $enumDecode(_$MessageTypeEnumMap, json['type']),
  contentText: json['contentText'] as String?,
  contentJson:
      json['contentJson'] as Map<String, dynamic>? ?? const <String, dynamic>{},
  attachmentUrl: json['attachmentUrl'] as String?,
  status: $enumDecode(_$MessageStatusEnumMap, json['status']),
  sentAt: const UtcDateTimeConverter().fromJson(json['sentAt'] as String),
  deliveredAt: _$JsonConverterFromJson<String, DateTime>(
    json['deliveredAt'],
    const UtcDateTimeConverter().fromJson,
  ),
  readAt: _$JsonConverterFromJson<String, DateTime>(
    json['readAt'],
    const UtcDateTimeConverter().fromJson,
  ),
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'id': const UuidConverter().toJson(instance.id),
  'chatId': const UuidConverter().toJson(instance.chatId),
  'senderId': const UuidConverter().toJson(instance.senderId),
  'type': _$MessageTypeEnumMap[instance.type]!,
  'contentText': instance.contentText,
  'contentJson': instance.contentJson,
  'attachmentUrl': instance.attachmentUrl,
  'status': _$MessageStatusEnumMap[instance.status]!,
  'sentAt': const UtcDateTimeConverter().toJson(instance.sentAt),
  'deliveredAt': _$JsonConverterToJson<String, DateTime>(
    instance.deliveredAt,
    const UtcDateTimeConverter().toJson,
  ),
  'readAt': _$JsonConverterToJson<String, DateTime>(
    instance.readAt,
    const UtcDateTimeConverter().toJson,
  ),
};

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.image: 'image',
  MessageType.system: 'system',
};

const _$MessageStatusEnumMap = {
  MessageStatus.sent: 'sent',
  MessageStatus.delivered: 'delivered',
  MessageStatus.read: 'read',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => _MessageDto(
  id: json['id'] as String,
  chatId: json['chat_id'] as String,
  senderId: json['sender_id'] as String,
  type: json['type'] as String,
  contentText: json['content_text'] as String?,
  contentJson: json['content_json'] as Map<String, dynamic>?,
  attachmentUrl: json['attachment_url'] as String?,
  status: json['status'] as String,
  sentAt: json['sent_at'] as String,
  deliveredAt: json['delivered_at'] as String?,
  readAt: json['read_at'] as String?,
);

Map<String, dynamic> _$MessageDtoToJson(_MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'sender_id': instance.senderId,
      'type': instance.type,
      'content_text': instance.contentText,
      'content_json': instance.contentJson,
      'attachment_url': instance.attachmentUrl,
      'status': instance.status,
      'sent_at': instance.sentAt,
      'delivered_at': instance.deliveredAt,
      'read_at': instance.readAt,
    };
