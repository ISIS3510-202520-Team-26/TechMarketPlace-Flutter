import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
abstract class ChatThread with _$ChatThread {
  const ChatThread._();

  const factory ChatThread({
    required String id,
    required String buyerId,
    required String sellerId,
    required String listingId,
    required String status,
  }) = _ChatThread;
}

@freezed
abstract class Message with _$Message {
  const Message._();

  const factory Message({
    required String id,
    required String threadId,
    required String senderId,
    String? text,
    @Default(<String>[]) List<String> media,
    required DateTime sentAt,
  }) = _Message;
}
