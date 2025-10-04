import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'chat_participant.freezed.dart';
part 'chat_participant.g.dart';

@freezed
abstract class ChatParticipant with _$ChatParticipant {
  const factory ChatParticipant({
    @UuidConverter() required Uuid chatId,
    @UuidConverter() required Uuid userId,
    required ChatRole role,
    @UtcDateTimeConverter() required DateTime joinedAt,
  }) = _ChatParticipant;

  factory ChatParticipant.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantFromJson(json);
}

@freezed
abstract class ChatParticipantDto with _$ChatParticipantDto {
  const ChatParticipantDto._();
  const factory ChatParticipantDto({
    @JsonKey(name: 'chat_id') required String chatId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'joined_at') required String joinedAt,
  }) = _ChatParticipantDto;

  factory ChatParticipantDto.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantDtoFromJson(json);

  ChatParticipant toDomain() => ChatParticipant(
        chatId: Uuid.from(chatId),
        userId: Uuid.from(userId),
        role: ChatRole.values.firstWhere((e) => e.name == role,
            orElse: () => ChatRole.other),
        joinedAt: DateTime.parse(joinedAt).toUtc(),
      );

  static ChatParticipantDto fromDomain(ChatParticipant p) =>
      ChatParticipantDto(
        chatId: p.chatId.asString,
        userId: p.userId.asString,
        role: p.role.name,
        joinedAt: p.joinedAt.toIso8601String(),
      );
}
