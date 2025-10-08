// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatThreadDto _$ChatThreadDtoFromJson(Map<String, dynamic> json) =>
    ChatThreadDto(
      id: json['id'] as String,
      buyerId: json['buyerId'] as String,
      sellerId: json['sellerId'] as String,
      listingId: json['listingId'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$ChatThreadDtoToJson(ChatThreadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'buyerId': instance.buyerId,
      'sellerId': instance.sellerId,
      'listingId': instance.listingId,
      'status': instance.status,
    };

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
  id: json['id'] as String,
  threadId: json['threadId'] as String,
  senderId: json['senderId'] as String,
  text: json['text'] as String?,
  media:
      (json['media'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  sentAt: DateTime.parse(json['sentAt'] as String),
);

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'threadId': instance.threadId,
      'senderId': instance.senderId,
      'text': instance.text,
      'media': instance.media,
      'sentAt': instance.sentAt.toIso8601String(),
    };
