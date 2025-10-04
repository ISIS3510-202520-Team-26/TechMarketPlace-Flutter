import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../common/app_bottom_nav.dart';
import '../_mocks/mock_telemetry.dart';
import '../market/dashboard_screen.dart';
import '../market/search_screen.dart';
import '../chat/chat_list_screen.dart';
import '../insights/my_activity_screen.dart';
import 'my_listings_screen.dart';
import 'settings_screen.dart';
import '../market/create_listing_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  DateTime? _enteredAt;
  bool _isNavigating = false;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'profile'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({'event_name': 'section_view_ended', 'page': 'profile', 'duration_ms': ms});
    super.dispose();
  }

  void _go(int i) {
    if (_isNavigating || i == 3) return;
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
    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text('Profile', style: TextStyle(color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen())),
            icon: const Icon(Icons.settings, color: AppTheme.kDarkGreen),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 28, child: Icon(Icons.person)),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Student Name', style: TextStyle(fontWeight: FontWeight.w800)),
                  Text('user@university.edu'),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CreateListingScreen())),
            icon: const Icon(Icons.add),
            label: const Text('Create new listing'),
          ),
          const SizedBox(height: 8),
          ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            tileColor: Colors.white,
            leading: const Icon(Icons.store_mall_directory_outlined),
            title: const Text('My listings'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MyListingsScreen())),
          ),
        ],
      ),
      bottomNavigationBar: AppBottomNav(currentIndex: 3, onTap: (i) => _go(i)),
    );
  }
}
