import 'dart:async';
import 'package:market_flutter/core/errors/failures.dart';
import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/data/datasources/remote/api_chat_ds.dart';
import 'package:market_flutter/data/dtos/chat_dto.dart';
import 'package:market_flutter/domain/entities/chat.dart';
import 'package:market_flutter/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ApiChatDs remote;
  ChatRepositoryImpl(this.remote);

  @override
  Future<Result<ChatThread>> start(String listingId) async {
    try {
      final t = await remote.start(listingId);
      return Ok(ChatThread(
        id: t.id,
        buyerId: t.buyerId,
        sellerId: t.sellerId,
        listingId: t.listingId,
        status: t.status,
      ));
    } catch (e) {
      return Err(ServerFailure('start chat failed: $e'));
    }
  }

  @override
  Future<Result<List<Message>>> messages(String threadId) async {
    try {
      final completer = Completer<Result<List<Message>>>();
      final Stream<List<MessageDto>> stream = remote.messages(threadId);
      final sub = stream.listen((dtos) {
        final msgs = dtos
            .map((m) => Message(
                  id: m.id,
                  threadId: m.threadId,
                  senderId: m.senderId,
                  text: m.text,
                  media: List<String>.from(m.media),
                  sentAt: m.sentAt,
                ))
            .toList(growable: false);
        completer.complete(Ok(msgs));
      }, onError: (err) {
        completer.complete(Err(ServerFailure('messages stream error: $err')));
      });
      final res = await completer.future.timeout(
        const Duration(seconds: 2),
        onTimeout: () => Ok(const <Message>[]),
      );
      await sub.cancel();
      return res;
    } catch (e) {
      return Err(ServerFailure('messages failed: $e'));
    }
  }

  @override
  Future<Result<void>> send(String threadId, Message message) async {
    try {
      final dto = MessageDto(
        id: message.id,
        threadId: threadId,
        senderId: message.senderId,
        text: message.text,
        media: List<String>.from(message.media),
        sentAt: message.sentAt,
      );
      await remote.send(threadId, dto);
      return Ok(null);
    } catch (e) {
      return Err(ServerFailure('send failed: $e'));
    }
  }

  @override
  Future<Result<void>> end(String threadId, {String? reason}) async {
    try {
      await remote.end(threadId, reason: reason);
      return Ok(null);
    } catch (e) {
      return Err(ServerFailure('end failed: $e'));
    }
  }
}
