import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../common/app_bottom_nav.dart';
import '../_mocks/mock_telemetry.dart';
import '../market/dashboard_screen.dart';
import '../market/search_screen.dart';
import '../chat/chat_list_screen.dart';
import '../profile/profile_screen.dart';

class MyActivityScreen extends StatefulWidget {
  const MyActivityScreen({super.key});

  @override
  State<MyActivityScreen> createState() => _MyActivityScreenState();
}

class _MyActivityScreenState extends State<MyActivityScreen> {
  DateTime? _enteredAt;
  bool _isNavigating = false;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'insights_my_activity'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({'event_name': 'section_view_ended', 'page': 'insights_my_activity', 'duration_ms': ms});
    super.dispose();
  }

  void _go(int i) {
    if (_isNavigating || i == 4) return;
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
    final events = MockTelemetry.events;
    final durations = <String, int>{};

    for (final e in events) {
      if (e['event_name'] == 'section_view_ended') {
        final page = e['page'] as String? ?? 'unknown';
        final ms = (e['duration_ms'] as int?) ?? 0;
        durations.update(page, (v) => v + ms, ifAbsent: () => ms);
      }
    }

    final entries = durations.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text('My activity', style: TextStyle(color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) {
          final e = entries[i];
          final seconds = (e.value / 1000).toStringAsFixed(1);
          return ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            tileColor: Colors.white,
            leading: const Icon(Icons.timer),
            title: Text(e.key),
            trailing: Text('$seconds s'),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemCount: entries.length,
      ),
      bottomNavigationBar: AppBottomNav(currentIndex: 4, onTap: (i) => _go(i)),
    );
  }
}
