// lib/presentation/features/chat/chat_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'chat_vm.dart';

class ChatScreen extends ConsumerStatefulWidget {
  final String listingId;
  const ChatScreen({super.key, required this.listingId});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final _input = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(chatVmProvider.notifier).start(widget.listingId));
  }

  @override
  Widget build(BuildContext context) {
    final st = ref.watch(chatVmProvider);
    final vm = ref.read(chatVmProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: st.messages.length,
            itemBuilder: (_, i) => ListTile(
              title: Text(st.messages[i].text ?? '(media)'),
              subtitle: Text(st.messages[i].sentAt.toIso8601String()),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(children: [
            Expanded(child: TextField(controller: _input)),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                final t = _input.text.trim();
                if (t.isEmpty) return;
                vm.send(t);
                _input.clear();
              },
            )
          ]),
        )
      ]),
    );
  }

  @override
  void dispose() {
    ref.read(chatVmProvider.notifier).end();
    super.dispose();
  }
}
