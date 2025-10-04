import 'package:flutter/material.dart';
import '../_mocks/mock_repositories.dart';
import '../_mocks/mock_telemetry.dart';

class PriceSuggestionSheet extends StatefulWidget {
  final String listingId;
  const PriceSuggestionSheet({super.key, required this.listingId});

  @override
  State<PriceSuggestionSheet> createState() => _PriceSuggestionSheetState();
}

class _PriceSuggestionSheetState extends State<PriceSuggestionSheet> {
  late int _suggestedCents;

  @override
  void initState() {
    super.initState();
    _suggestedCents = MockRepo.suggestedPriceCents(widget.listingId);
  }

  @override
  Widget build(BuildContext context) {
    final priceStr = '\$${(_suggestedCents/100).toStringAsFixed(2)}';

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 44, height: 4, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(2))),
            const SizedBox(height: 12),
            const Text('Suggested price', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
            const SizedBox(height: 8),
            Text(priceStr, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 22)),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  MockTelemetry.send({'event_name': 'price_tool_accepted', 'listing_id': widget.listingId, 'suggested_cents': _suggestedCents});
                  Navigator.pop(context, _suggestedCents);
                },
                child: const Text('Accept'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
