// lib/presentation/features/settings/settings_vm.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../common/view_states/view_state.dart';
import '../../../infra/di/providers.dart';
import '../../../domain/value_objects/campus.dart';

class SettingsState {
  final Map<String, bool> flags;
  final Campus? campus;
  const SettingsState({this.flags = const {}, this.campus});

  SettingsState copyWith({Map<String, bool>? flags, Campus? campus}) =>
      SettingsState(flags: flags ?? this.flags, campus: campus ?? this.campus);
}

class SettingsVM extends StateNotifier<SettingsState> {
  final _flags;
  final _location;

  SettingsVM(this._flags, this._location) : super(const SettingsState());

  Future<void> toggleFlag(String k, bool enabled) async {
    final next = {...state.flags, k: enabled};
    state = state.copyWith(flags: next);
  }

  Future<void> requestLocation() async {
    final c = await _location.currentCampus();
    state = state.copyWith(campus: c);
  }
}

final settingsVmProvider = StateNotifierProvider<SettingsVM, SettingsState>((ref) {
  final flags = ref.watch(featureFlagServiceProvider);
  final location = ref.watch(deviceLocationServiceProvider);
  return SettingsVM(flags, location);
});
