import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/chat.dart';
import 'package:market_flutter/domain/repositories/chat_repository.dart';

class SendMessageUc {
  final ChatRepository repo;
  SendMessageUc(this.repo);

  Future<Result<void>> call(String threadId, Message message) =>
      repo.send(threadId, message);
}
