import 'package:market_flutter/core/utils/result.dart';
import 'package:market_flutter/domain/entities/chat.dart';
import 'package:market_flutter/domain/repositories/chat_repository.dart';

class StartChatUc {
  final ChatRepository repo;
  StartChatUc(this.repo);

  Future<Result<ChatThread>> call(String listingId) => repo.start(listingId);
}
