import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/enums.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';
import '../commons/value_objects.dart' show JsonMap;

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    @UuidConverter() required Uuid id,
    @UuidConverter() required Uuid chatId,
    @UuidConverter() required Uuid senderId,
    required MessageType type,
    String? contentText,
    @Default(<String, dynamic>{}) JsonMap contentJson,
    String? attachmentUrl,
    required MessageStatus status,
    @UtcDateTimeConverter() required DateTime sentAt,
    @UtcDateTimeConverter() DateTime? deliveredAt,
    @UtcDateTimeConverter() DateTime? readAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
abstract class MessageDto with _$MessageDto {
  const MessageDto._();
  const factory MessageDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'chat_id') required String chatId,
    @JsonKey(name: 'sender_id') required String senderId,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'content_text') String? contentText,
    @JsonKey(name: 'content_json') Map<String, dynamic>? contentJson,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'sent_at') required String sentAt,
    @JsonKey(name: 'delivered_at') String? deliveredAt,
    @JsonKey(name: 'read_at') String? readAt,
  }) = _MessageDto;

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  Message toDomain() => Message(
        id: Uuid.from(id),
        chatId: Uuid.from(chatId),
        senderId: Uuid.from(senderId),
        type: MessageType.values.firstWhere((e) => e.name == type),
        contentText: contentText,
        contentJson: contentJson ?? <String, dynamic>{},
        attachmentUrl: attachmentUrl,
        status: MessageStatus.values.firstWhere((e) => e.name == status),
        sentAt: DateTime.parse(sentAt).toUtc(),
        deliveredAt:
            deliveredAt == null ? null : DateTime.parse(deliveredAt!).toUtc(),
        readAt: readAt == null ? null : DateTime.parse(readAt!).toUtc(),
      );

  static MessageDto fromDomain(Message m) => MessageDto(
        id: m.id.asString,
        chatId: m.chatId.asString,
        senderId: m.senderId.asString,
        type: m.type.name,
        contentText: m.contentText,
        contentJson: m.contentJson,
        attachmentUrl: m.attachmentUrl,
        status: m.status.name,
        sentAt: m.sentAt.toIso8601String(),
        deliveredAt: m.deliveredAt?.toIso8601String(),
        readAt: m.readAt?.toIso8601String(),
      );
}
