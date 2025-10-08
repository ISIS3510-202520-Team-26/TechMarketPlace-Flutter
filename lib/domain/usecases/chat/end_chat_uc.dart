import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/repositories/chat_repository.dart';

class EndChatUc {
  final ChatRepository repo;
  EndChatUc(this.repo);

  Future<Result<void>> call(String threadId, {String? reason}) =>
      repo.end(threadId, reason: reason);
}
