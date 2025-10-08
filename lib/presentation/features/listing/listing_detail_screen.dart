// lib/presentation/features/listing/listing_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entities/listing_base.dart';
import '../../common/widgets/price_chip.dart';
import '../../common/view_states/view_state.dart';
import '../../../domain/value_objects/money.dart';
import 'listing_detail_vm.dart';

class ListingDetailScreen extends ConsumerStatefulWidget {
  final String listingId;
  const ListingDetailScreen({super.key, required this.listingId});

  @override
  ConsumerState<ListingDetailScreen> createState() => _ListingDetailScreenState();
}

class _ListingDetailScreenState extends ConsumerState<ListingDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(listingDetailVmProvider.notifier).load(widget.listingId));
  }

  @override
  Widget build(BuildContext context) {
    final st = ref.watch(listingDetailVmProvider);
    final vm = ref.read(listingDetailVmProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Listing ${widget.listingId}'), actions: [
        IconButton(
          icon: Icon(st.isFavorite ? Icons.favorite : Icons.favorite_border),
          onPressed: () => vm.toggleFavorite(widget.listingId),
        ),
      ]),
      body: Builder(builder: (_) {
        switch (st.listing) {
          case ViewState<ListingBase>(isLoading: true):
            return const LinearProgressIndicator();
          default:
            if (st.listing.hasError) {
              return Center(child: Text('Error: ${st.listing.error!.message}'));
            }
            if (!st.listing.hasData) {
              return const Center(child: Text('No data'));
            }
            // No conocemos detalles exactos; mostramos placeholder:
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Details placeholder'),
                  SizedBox(height: 12),
                  PriceChip(price: Money(amount: 0, currency: 'USD')),
                ],
              ),
            );
        }
      }),
    );
  }
}
