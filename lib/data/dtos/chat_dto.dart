import 'package:json_annotation/json_annotation.dart';

part 'chat_dto.g.dart';

@JsonSerializable()
class ChatThreadDto {
  final String id;
  final String buyerId;
  final String sellerId;
  final String listingId;
  final String status;

  ChatThreadDto({
    required this.id,
    required this.buyerId,
    required this.sellerId,
    required this.listingId,
    required this.status,
  });

  factory ChatThreadDto.fromJson(Map<String, dynamic> json) => _$ChatThreadDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ChatThreadDtoToJson(this);
}

@JsonSerializable()
class MessageDto {
  final String id;
  final String threadId;
  final String senderId;
  final String? text;
  final List<String> media;
  final DateTime sentAt;

  MessageDto({
    required this.id,
    required this.threadId,
    required this.senderId,
    this.text,
    this.media = const [],
    required this.sentAt,
  });

  factory MessageDto.fromJson(Map<String, dynamic> json) => _$MessageDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);
}
