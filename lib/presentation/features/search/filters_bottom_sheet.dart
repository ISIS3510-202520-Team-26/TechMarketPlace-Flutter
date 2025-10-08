// lib/presentation/features/search/filters_bottom_sheet.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entities/search_filters.dart';
import 'search_vm.dart';

class FiltersBottomSheet extends ConsumerStatefulWidget {
  const FiltersBottomSheet({super.key});

  @override
  ConsumerState<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends ConsumerState<FiltersBottomSheet> {
  final _q = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final vm = ref.read(searchVmProvider.notifier);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        TextField(
          controller: _q,
          decoration: const InputDecoration(labelText: 'Query'),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  vm.applyFilters(SearchFilters(query: _q.text));
                  Navigator.of(context).pop();
                },
                child: const Text('Apply'),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
