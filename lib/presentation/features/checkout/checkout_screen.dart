// lib/presentation/features/checkout/checkout_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/value_objects/money.dart';
import 'checkout_vm.dart';

class CheckoutScreen extends ConsumerWidget {
  final String listingId;
  const CheckoutScreen({super.key, required this.listingId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final st = ref.watch(checkoutVmProvider);
    final vm = ref.read(checkoutVmProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Listing: $listingId'),
          const SizedBox(height: 8),
          Row(
            children: [
              ElevatedButton(
                onPressed: () => vm.start(listingId, const Money(amount: 100, currency: 'USD')),
                child: const Text('Start'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: vm.attemptPayment,
                child: const Text('Pay'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: vm.confirmEscrow,
                child: const Text('Release'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (st.order.hasData) Text('Order: ${st.order.data!.id} (${st.order.data!.status})'),
          if (st.escrowStatus != null) Text('Escrow: ${st.escrowStatus}'),
        ]),
      ),
    );
  }
}
