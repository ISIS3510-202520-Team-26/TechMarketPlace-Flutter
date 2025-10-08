// lib/presentation/features/dashboard/dashboard_vm.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../common/view_states/view_state.dart';
import '../../../infra/analytics/telemetry_service.dart';
import '../../../infra/di/providers.dart';
import '../../../core/constants/telemetry_keys.dart';

class DashboardState {
  final ViewState<void> status;
  final String? dwellHandle;
  const DashboardState({this.status = const ViewState.idle(), this.dwellHandle});

  DashboardState copyWith({ViewState<void>? status, String? dwellHandle}) =>
      DashboardState(status: status ?? this.status, dwellHandle: dwellHandle);
}

class DashboardVM extends StateNotifier<DashboardState> {
  final TelemetryService telemetry;
  DashboardVM(this.telemetry) : super(const DashboardState());

  Future<void> load() async {
    state = state.copyWith(status: const ViewState.loading());
    // simulación rápida
    await Future.delayed(const Duration(milliseconds: 200));
    state = state.copyWith(status: const ViewState.success(null));
  }

  void trackSectionDwellStart(String section) {
    final h = telemetry.startTimer(TelemetryKeys.sectionViewed, {'section': section});
    state = state.copyWith(dwellHandle: h);
  }

  Future<void> trackSectionDwellEnd() async {
    final h = state.dwellHandle;
    if (h != null) {
      await telemetry.endTimer(h, extraProps: {'ended': true});
      state = state.copyWith(dwellHandle: null);
    }
  }
}

final dashboardVmProvider = StateNotifierProvider<DashboardVM, DashboardState>((ref) {
  final telemetry = ref.watch(telemetryServiceProvider);
  return DashboardVM(telemetry);
});
