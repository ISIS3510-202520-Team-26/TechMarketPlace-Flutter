import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/chat.dart';

abstract class ChatRepository {
  Future<Result<ChatThread>> start(String listingId);
  Future<Result<void>> end(String threadId, {String? reason});
  Future<Result<void>> send(String threadId, Message message);

  Future<Result<List<Message>>> messages(String threadId);
}
