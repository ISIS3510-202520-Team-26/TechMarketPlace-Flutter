// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatParticipant _$ChatParticipantFromJson(Map<String, dynamic> json) =>
    _ChatParticipant(
      chatId: const UuidConverter().fromJson(json['chatId'] as String),
      userId: const UuidConverter().fromJson(json['userId'] as String),
      role: $enumDecode(_$ChatRoleEnumMap, json['role']),
      joinedAt: const UtcDateTimeConverter().fromJson(
        json['joinedAt'] as String,
      ),
    );

Map<String, dynamic> _$ChatParticipantToJson(_ChatParticipant instance) =>
    <String, dynamic>{
      'chatId': const UuidConverter().toJson(instance.chatId),
      'userId': const UuidConverter().toJson(instance.userId),
      'role': _$ChatRoleEnumMap[instance.role]!,
      'joinedAt': const UtcDateTimeConverter().toJson(instance.joinedAt),
    };

const _$ChatRoleEnumMap = {
  ChatRole.seller: 'seller',
  ChatRole.buyer: 'buyer',
  ChatRole.other: 'other',
};

_ChatParticipantDto _$ChatParticipantDtoFromJson(Map<String, dynamic> json) =>
    _ChatParticipantDto(
      chatId: json['chat_id'] as String,
      userId: json['user_id'] as String,
      role: json['role'] as String,
      joinedAt: json['joined_at'] as String,
    );

Map<String, dynamic> _$ChatParticipantDtoToJson(_ChatParticipantDto instance) =>
    <String, dynamic>{
      'chat_id': instance.chatId,
      'user_id': instance.userId,
      'role': instance.role,
      'joined_at': instance.joinedAt,
    };
