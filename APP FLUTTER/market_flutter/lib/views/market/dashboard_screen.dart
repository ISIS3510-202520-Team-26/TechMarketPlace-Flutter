import 'package:flutter/material.dart';

import '../common/theme.dart';
import '../common/app_bottom_nav.dart';
import '../common/product_card.dart';
import '../common/empty_state.dart';
import '../common/context_banner.dart';
import '../_mocks/mock_repositories.dart';
import '../_mocks/mock_telemetry.dart';

import 'listing_detail_screen.dart';
import 'search_screen.dart';
import '../chat/chat_list_screen.dart';
import '../profile/profile_screen.dart';
import '../insights/my_activity_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DateTime? _enteredAt;
  bool _isNavigating = false;

  String? _selectedCategorySlug;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({
      'event_time': DateTime.now().toIso8601String(),
      'event_name': 'section_view_started',
      'page': 'home',
    });
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({
      'event_time': DateTime.now().toIso8601String(),
      'event_name': 'section_view_ended',
      'page': 'home',
      'duration_ms': ms,
    });
    super.dispose();
  }

  void _go(int i) {
    if (_isNavigating || i == 0) return;
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
    final categories = MockRepo.categories(); 
    final listings =
        MockRepo.listings(categorySlug: _selectedCategorySlug); 

    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: AppTheme.kDarkGreen,
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Semantics(
                    label: 'Search',
                    button: true,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(24),
                      onTap: () => _go(1),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.search, color: AppTheme.kDarkGreen),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Semantics(
                    label: 'Messages',
                    button: true,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(24),
                      onTap: () => _go(2),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.chat_bubble_outline, color: AppTheme.kDarkGreen),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ContextBanner(),
            ),
            const SizedBox(height: 8),

            SizedBox(
              height: 44,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                children: [
                  _CategoryChip(
                    label: 'All',
                    selected: _selectedCategorySlug == null,
                    onSelected: (_) => setState(() => _selectedCategorySlug = null),
                  ),
                  const SizedBox(width: 10),
                  for (final c in categories) ...[
                    _CategoryChip(
                      label: c.name,
                      selected: _selectedCategorySlug == c.slug,
                      onSelected: (_) =>
                          setState(() => _selectedCategorySlug = c.slug),
                    ),
                    const SizedBox(width: 10),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 10),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: listings.isEmpty
                    ? const EmptyState(
                        title: 'No items yet',
                        message:
                            'Try enabling mocks or create your first listing.',
                      )
                    : GridView.builder(
                        itemCount: listings.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.74,
                        ),
                        itemBuilder: (context, index) {
                          final l = listings[index];
                          return ProductCard(
                            listing: l,
                            onTap: () {
                              if (_isNavigating) return;
                              setState(() => _isNavigating = true);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ListingDetailScreen(
                                    listingId: l.id.toString(),
                                  ),
                                ),
                              ).then((_) =>
                                  setState(() => _isNavigating = false));
                            },
                            onAdd: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Added')),
                              );
                            },
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNav(currentIndex: 0, onTap: _go),
    );
  }
}

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const _CategoryChip({
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(
        color: selected ? Colors.white : AppTheme.kDarkGreen,
        fontWeight: FontWeight.w600,
      ),
      selectedColor: const Color(0xFF0C6B5C),
      backgroundColor: Colors.white,
      shape: const StadiumBorder(),
    );
  }
}
