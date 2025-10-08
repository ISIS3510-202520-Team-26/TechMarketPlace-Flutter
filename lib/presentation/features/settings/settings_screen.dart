// lib/presentation/features/settings/settings_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'settings_vm.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final st = ref.watch(settingsVmProvider);
    final vm = ref.read(settingsVmProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SwitchListTile(
            title: const Text('Firebase telemetry'),
            value: st.flags['telemetry_firebase'] ?? false,
            onChanged: (v) => vm.toggleFlag('telemetry_firebase', v),
          ),
          const SizedBox(height: 8),
          ListTile(
            title: const Text('Current campus'),
            subtitle: Text(st.campus?.display ?? 'Unknown'),
            trailing: ElevatedButton(
              onPressed: vm.requestLocation,
              child: const Text('Request'),
            ),
          ),
        ],
      ),
    );
  }
}
