// lib/presentation/features/dashboard/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../app/localization/l10n.dart';
import '../../common/widgets/context_banner.dart';
import '../dashboard/dashboard_vm.dart';
import '../../app/theme.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_routes.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final vm = ref.watch(dashboardVmProvider.notifier);
    final st = ref.watch(dashboardVmProvider);

    return Scaffold(
      appBar: AppBar(title: Text(s.appTitle)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ContextBanner('Welcome!'),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                ElevatedButton.icon(
                  onPressed: () => context.go(AppRoutes.search),
                  icon: const Icon(Icons.search),
                  label: Text(s.search),
                ),
                ElevatedButton.icon(
                  onPressed: () => context.go(AppRoutes.insights),
                  icon: const Icon(Icons.insights),
                  label: Text(s.insights),
                ),
                ElevatedButton.icon(
                  onPressed: () => context.go(AppRoutes.settings),
                  icon: const Icon(Icons.settings),
                  label: Text(s.settings),
                ),
              ],
            ),
          ),
          if (st.status.isLoading) const LinearProgressIndicator(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: vm.load,
        icon: const Icon(Icons.refresh),
        label: const Text('Reload'),
      ),
    );
  }
}
