import 'package:freezed_annotation/freezed_annotation.dart';
import '../commons/value_objects.dart';
import '../commons/converters.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    @UuidConverter() required Uuid id,
    @UuidConverter() Uuid? listingId,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

@freezed
abstract class ChatDto with _$ChatDto {
  const ChatDto._();
  const factory ChatDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'listing_id') String? listingId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _ChatDto;

  factory ChatDto.fromJson(Map<String, dynamic> json) =>
      _$ChatDtoFromJson(json);

  Chat toDomain() => Chat(
        id: Uuid.from(id),
        listingId: listingId == null ? null : Uuid.from(listingId!),
        createdAt: DateTime.parse(createdAt).toUtc(),
        updatedAt: DateTime.parse(updatedAt).toUtc(),
      );

  static ChatDto fromDomain(Chat c) => ChatDto(
        id: c.id.asString,
        listingId: c.listingId?.asString,
        createdAt: c.createdAt.toIso8601String(),
        updatedAt: c.updatedAt.toIso8601String(),
      );
}
