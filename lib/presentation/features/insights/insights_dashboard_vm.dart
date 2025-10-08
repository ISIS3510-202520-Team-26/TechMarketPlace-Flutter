// lib/presentation/features/insights/insights_dashboard_vm.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../common/view_states/view_state.dart';
import '../../../infra/analytics/telemetry_service.dart';
import '../../../infra/di/providers.dart';
import '../../../core/constants/telemetry_keys.dart';

class InsightsDashboardState {
  final DateTimeRange? range;
  final Map<String, Object?> metrics;

  const InsightsDashboardState({this.range, this.metrics = const {}});

  InsightsDashboardState copyWith({DateTimeRange? range, Map<String, Object?>? metrics}) =>
      InsightsDashboardState(range: range ?? this.range, metrics: metrics ?? this.metrics);
}

class InsightsDashboardVM extends StateNotifier<InsightsDashboardState> {
  final TelemetryService telemetry;

  InsightsDashboardVM(this.telemetry) : super(const InsightsDashboardState());

  void trackInsightsOpen() {
    telemetry.logEvent(TelemetryKeys.insightsOpened, {'range': state.range?.duration.inDays ?? 0});
  }

  void loadRange(DateTimeRange r) {
    state = state.copyWith(range: r, metrics: {'stub': 1, 'range_days': r.duration.inDays});
  }
}

final insightsDashboardVmProvider = StateNotifierProvider<InsightsDashboardVM, InsightsDashboardState>((ref) {
  final telemetry = ref.watch(telemetryServiceProvider);
  return InsightsDashboardVM(telemetry);
});
