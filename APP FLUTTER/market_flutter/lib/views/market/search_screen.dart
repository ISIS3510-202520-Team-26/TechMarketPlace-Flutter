import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../common/app_bottom_nav.dart';
import '../common/product_card.dart';
import '../_mocks/mock_repositories.dart';
import '../_mocks/mock_telemetry.dart';
import 'listing_detail_screen.dart';
import 'filters_bottom_sheet.dart';
import '../chat/chat_list_screen.dart';
import '../profile/profile_screen.dart';
import '../insights/my_activity_screen.dart';
import 'dashboard_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  DateTime? _enteredAt;
  bool _isNavigating = false;
  String _query = '';
  int _chipIndex = 0;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name':'section_view_started','page':'search'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({'event_name':'section_view_ended','page':'search','duration_ms': ms});
    super.dispose();
  }

  void _go(int i) {
    if (_isNavigating || i == 1) return;
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
    final cats = MockRepo.categories();
    final activeCat = cats[_chipIndex];
    final items = MockRepo.listings(categorySlug: activeCat.slug, query: _query);

    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text('Search', style: TextStyle(color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
        actions: [
          IconButton(
            onPressed: () async {
              await showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (_) => const FiltersBottomSheet(),
              );
            },
            icon: const Icon(Icons.tune, color: AppTheme.kDarkGreen),
            tooltip: 'Filters',
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // search box
            TextField(
              onChanged: (v) => setState(() => _query = v),
              decoration: InputDecoration(
                hintText: 'Search products',
                prefixIcon: const Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 42,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) {
                  final c = cats[i];
                  final selected = i == _chipIndex;
                  return ChoiceChip(
                    label: Text(c.name),
                    selected: selected,
                    onSelected: (_) => setState(() => _chipIndex = i),
                    selectedColor: AppTheme.chipSelected,
                    shape: const StadiumBorder(),
                    labelStyle: TextStyle(
                      color: selected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  );
                },
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemCount: cats.length,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12, childAspectRatio: 0.72),
                itemBuilder: (_, i) {
                  final l = items[i];
                  return ProductCard(
                    listing: l,
                    onTap: () {
                      MockTelemetry.send({'event_name':'product_detail_opened','listing_id': l.id.asString});
                      Navigator.push(context, MaterialPageRoute(builder: (_) => ListingDetailScreen(listingId: l.id.asString)));
                    },
                    onAdd: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AppBottomNav(currentIndex: 1, onTap: (i) => _go(i)),
    );
  }
}
