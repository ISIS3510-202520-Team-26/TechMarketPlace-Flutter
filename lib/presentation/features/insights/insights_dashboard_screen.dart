// lib/presentation/features/insights/insights_dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'insights_dashboard_vm.dart';

class InsightsDashboardScreen extends ConsumerWidget {
  const InsightsDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final st = ref.watch(insightsDashboardVmProvider);
    final vm = ref.read(insightsDashboardVmProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Insights')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ElevatedButton(
            onPressed: () {
              final now = DateTime.now();
              vm.loadRange(DateTimeRange(start: now.subtract(const Duration(days: 7)), end: now));
              vm.trackInsightsOpen();
            },
            child: const Text('Load last 7 days'),
          ),
          const SizedBox(height: 12),
          Text('Metrics: ${st.metrics}'),
        ]),
      ),
    );
  }
}
