// lib/presentation/features/listing/create_listing_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'create_listing_vm.dart';

class CreateListingScreen extends ConsumerWidget {
  const CreateListingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final st = ref.watch(createListingVmProvider);
    final vm = ref.read(createListingVmProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Create Listing')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const Text('Form placeholder'),
          const SizedBox(height: 12),
          if (st.saving.isLoading) const LinearProgressIndicator(),
          if (st.lastPublishedId != null) Text('Published: ${st.lastPublishedId}'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // TODO: construir un draft real desde el form.
              // Aquí solo demostración (no tenemos datos reales):
              // vm.publish(ListingBase.book(...));
            },
            child: const Text('Publish'),
          ),
        ]),
      ),
    );
  }
}
