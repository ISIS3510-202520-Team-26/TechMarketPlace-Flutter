// lib/presentation/features/search/search_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common/widgets/empty_state.dart';
import '../../common/widgets/product_card.dart';
import 'filters_bottom_sheet.dart';
import 'search_vm.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final st = ref.watch(searchVmProvider);
    final vm = ref.watch(searchVmProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (_) => const FiltersBottomSheet(),
            ),
          ),
        ],
      ),
      body: Builder(builder: (context) {
        if (st.viewState.isLoading) {
          return const LinearProgressIndicator();
        }
        if (st.results.isEmpty) {
          return const EmptyState(title: 'No results', subtitle: 'Try changing filters.');
        }
        return ListView.builder(
          itemCount: st.results.length,
          itemBuilder: (_, i) {
            final item = st.results[i];
            final title = 'Listing ${i + 1}';
            return ProductCard(
              title: title,
              trailing: '\$?',
              onTap: () => context.push('/listing/${i + 1}'),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          vm.startSearchTimer();
          vm.search();
        },
        icon: const Icon(Icons.search),
        label: const Text('Search'),
      ),
    );
  }
}
