import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../_mocks/mock_repositories.dart';
import '../_mocks/mock_telemetry.dart';
import 'offer_sheet.dart';
import 'order_status_screen.dart';

class CheckoutScreen extends StatefulWidget {
  final String listingId;
  const CheckoutScreen({super.key, required this.listingId});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  DateTime? _enteredAt;
  int? _offerCents;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'checkout'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({'event_name': 'section_view_ended', 'page': 'checkout', 'duration_ms': ms});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final listing = MockRepo.listingById(widget.listingId)!;
    final price = _offerCents ?? listing.price.amountCents;
    final priceStr = '\$${(price/100).toStringAsFixed(2)} ${listing.price.currency.asString}';

    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text('Checkout', style: TextStyle(color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              tileColor: Colors.white,
              title: Text(listing.title, maxLines: 1, overflow: TextOverflow.ellipsis),
              subtitle: Text('Price: $priceStr'),
              trailing: OutlinedButton(
                onPressed: () async {
                  final cents = await showModalBottomSheet<int>(
                    context: context,
                    builder: (_) => OfferSheet(currentPriceCents: listing.price.amountCents),
                  );
                  if (cents != null) setState(() => _offerCents = cents);
                },
                child: const Text('Offer'),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final order = MockRepo.createOrderForListing(widget.listingId);
                  if (order == null) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Unable to create order.')));
                    return;
                  }
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => OrderStatusScreen(orderId: order.id.asString),
                    ),
                  );
                },
                child: const Text('Pay now (mock)'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
