// lib/views/chat/chat_list_screen.dart
import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../common/app_bottom_nav.dart';
import '../_mocks/mock_repositories.dart';
import '../_mocks/mock_telemetry.dart';
import 'chat_screen.dart';
import '../market/dashboard_screen.dart';
import '../market/search_screen.dart';
import '../profile/profile_screen.dart';
import '../insights/my_activity_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  DateTime? _enteredAt;
  bool _isNavigating = false;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send(
        {'event_name': 'section_view_started', 'page': 'chat_list'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({
      'event_name': 'section_view_ended',
      'page': 'chat_list',
      'duration_ms': ms
    });
    super.dispose();
  }

  void _go(int i) {
    if (_isNavigating || i == 2) return;
    setState(() => _isNavigating = true);
    final screen = [
      const DashboardScreen(),
      const SearchScreen(),
      const ChatListScreen(),
      const ProfileScreen(),
      const MyActivityScreen(),
    ][i];
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen))
        .then((_) => setState(() => _isNavigating = false));
  }

  @override
  Widget build(BuildContext context) {
    final chats = MockRepo.chats();

    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Chats',
            style: TextStyle(
                color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) {
          final c = chats[i];
          final listing = MockRepo.listingById(c.listingId.toString())!;
          return ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            tileColor: Colors.white,
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(
              listing.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: const Text('Tap to open chat'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(chatId: c.id.toString()),
                ),
              );
            },
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemCount: chats.length,
      ),
      bottomNavigationBar:
          AppBottomNav(currentIndex: 2, onTap: (i) => _go(i)),
    );
  }
}
