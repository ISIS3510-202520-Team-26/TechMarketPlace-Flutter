import 'package:market_flutter/data/adapters/mock/mock_api_client.dart';
import 'package:market_flutter/data/dtos/chat_dto.dart';

class ApiChatDs {
  final MockApiClient _client;
  ApiChatDs(this._client);

  Future<ChatThreadDto> start(String listingId) async {
    final json = await _client.startChat(listingId);
    return ChatThreadDto.fromJson(json);
  }

  Stream<List<MessageDto>> messages(String threadId) =>
      _client.messages(threadId).map((list) => list.map(MessageDto.fromJson).toList(growable: false));

  Future<void> send(String threadId, MessageDto message) =>
      _client.sendMessage(threadId, message.toJson());

  Future<void> end(String threadId, {String? reason}) => _client.endChat(threadId, reason: reason);
}
