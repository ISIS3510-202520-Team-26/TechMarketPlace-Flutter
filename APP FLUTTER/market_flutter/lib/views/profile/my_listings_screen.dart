import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../common/product_card.dart';
import '../_mocks/mock_repositories.dart';
import '../_mocks/mock_telemetry.dart';
import '../market/listing_detail_screen.dart';

class MyListingsScreen extends StatefulWidget {
  const MyListingsScreen({super.key});

  @override
  State<MyListingsScreen> createState() => _MyListingsScreenState();
}

class _MyListingsScreenState extends State<MyListingsScreen> {
  DateTime? _enteredAt;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'my_listings'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({'event_name': 'section_view_ended', 'page': 'my_listings', 'duration_ms': ms});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final listings = MockRepo.listings();

    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text('My listings', style: TextStyle(color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: listings.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12, childAspectRatio: 0.72),
          itemBuilder: (_, i) {
            final l = listings[i];
            return ProductCard(
              listing: l,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ListingDetailScreen(listingId: l.id.asString))),
            );
          },
        ),
      ),
    );
  }
}
