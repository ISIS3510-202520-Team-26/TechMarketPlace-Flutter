// lib/views/market/listing_detail_screen.dart
import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../_mocks/mock_repositories.dart';
import '../_mocks/mock_telemetry.dart';
import '../checkout/checkout_screen.dart';
import 'price_suggestion_sheet.dart';
import '../chat/chat_screen.dart';

class ListingDetailScreen extends StatefulWidget {
  final String listingId;
  const ListingDetailScreen({super.key, required this.listingId});

  @override
  State<ListingDetailScreen> createState() => _ListingDetailScreenState();
}

class _ListingDetailScreenState extends State<ListingDetailScreen> {
  DateTime? _enteredAt;
  dynamic _listing; // Desacoplado del tipo exacto para compatibilidad

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    _listing = MockRepo.listingById(widget.listingId);
    MockTelemetry.send({
      'event_name': 'section_view_started',
      'page': 'listing_detail',
      'listing_id': widget.listingId,
    });
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({
      'event_name': 'section_view_ended',
      'page': 'listing_detail',
      'listing_id': widget.listingId,
      'duration_ms': ms,
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = _listing!;
    final listingId = l.id.toString();
    final photo = MockRepo.photos(listingId).firstOrNull?.url;
    final currency = _currencyCode(l.price.currency);
    final priceStr =
        '\$${(l.price.amountCents / 100).toStringAsFixed(2)} $currency';

    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: AppTheme.kDarkGreen),
        title: const Text(
          'Details',
          style: TextStyle(
            color: AppTheme.kDarkGreen,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            tooltip: 'Ask seller',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChatScreen(
                    chatId: MockRepo.chats().first.id.toString(),
                  ),
                ),
              );
            },
            icon: const Icon(Icons.chat_bubble_outline,
                color: AppTheme.kDarkGreen),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Semantics(
              label: 'Product image ${l.title}',
              image: true,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: photo != null
                    ? Image.network(photo, fit: BoxFit.cover)
                    : Container(color: Colors.grey.shade200),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(l.title, style: AppTheme.header.copyWith(fontSize: 22)),
          const SizedBox(height: 4),
          Text(
            _conditionLabel(l.condition),
            style: TextStyle(color: Colors.grey.shade600),
          ),
          const SizedBox(height: 8),
          Text(priceStr, style: AppTheme.price.copyWith(fontSize: 20)),
          const SizedBox(height: 12),
          Text(l.description ?? '—'),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.lightbulb_outline),
                  label: const Text('Price suggestion'),
                  onPressed: () async {
                    MockTelemetry.send({
                      'event_name': 'price_tool_opened',
                      'listing_id': listingId,
                    });
                    await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      builder: (_) =>
                          PriceSuggestionSheet(listingId: listingId),
                    );
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    MockTelemetry.send({
                      'event_name': 'order_initiated',
                      'listing_id': listingId,
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CheckoutScreen(listingId: listingId),
                      ),
                    );
                  },
                  child: const Text('Buy now'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

extension<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}

String _conditionLabel(dynamic cond) {
  final raw = cond is Enum ? cond.name : cond?.toString();
  final s = (raw ?? '').toLowerCase();
  switch (s) {
    case 'new':
    case 'new_':
      return 'New';
    case 'used':
      return 'Used';
    case 'refurbished':
      return 'Refurbished';
    default:
      return '—';
  }
}

String _currencyCode(dynamic c) {
  if (c == null) return 'USD';
  final raw = c is Enum ? c.name : c.toString();
  final last = raw.split('.').last;
  return last.toUpperCase();
}
