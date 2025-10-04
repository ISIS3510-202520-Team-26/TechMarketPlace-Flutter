import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../_mocks/mock_repositories.dart';
import '../_mocks/mock_telemetry.dart';

class ChatScreen extends StatefulWidget {
  final String chatId;
  const ChatScreen({super.key, required this.chatId});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  DateTime? _enteredAt;
  final _text = TextEditingController();

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'chat', 'chat_id': widget.chatId});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({'event_name': 'section_view_ended', 'page': 'chat', 'chat_id': widget.chatId, 'duration_ms': ms});
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final messages = MockRepo.messages(widget.chatId);

    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text('Chat', style: TextStyle(color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (_, i) {
                final m = messages[i];
                final isMe = i.isOdd;
                return Align(
                  alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: isMe ? AppTheme.kDarkGreen.withOpacity(.12) : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(m.contentText ?? '—'),
                  ),
                );
              },
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _text,
                      decoration: const InputDecoration(
                        hintText: 'Type a message',
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      MockTelemetry.send({'event_name': 'chat_message_sent', 'chat_id': widget.chatId});
                      _text.clear();
                    },
                    child: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
