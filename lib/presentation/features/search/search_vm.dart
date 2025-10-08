// lib/presentation/features/search/search_vm.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../common/view_states/view_state.dart';
import '../../../infra/di/providers.dart';
import '../../../infra/analytics/telemetry_service.dart';
import '../../../core/constants/telemetry_keys.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../../domain/entities/listing_base.dart';
import '../../../domain/entities/search_filters.dart';

class SearchState {
  final ViewState<void> viewState;
  final List<ListingBase> results;
  final SearchFilters? filters;
  final String? timerHandle;
  final String? errorMessage;

  const SearchState({
    this.viewState = const ViewState.idle(),
    this.results = const [],
    this.filters,
    this.timerHandle,
    this.errorMessage,
  });

  SearchState copyWith({
    ViewState<void>? viewState,
    List<ListingBase>? results,
    SearchFilters? filters,
    String? timerHandle,
    String? errorMessage,
  }) {
    return SearchState(
      viewState: viewState ?? this.viewState,
      results: results ?? this.results,
      filters: filters ?? this.filters,
      timerHandle: timerHandle ?? this.timerHandle,
      errorMessage: errorMessage,
    );
  }
}

class SearchVM extends StateNotifier<SearchState> {
  final TelemetryService telemetry;
  final _repo;

  SearchVM(this._repo, this.telemetry) : super(const SearchState());

  void applyFilters(SearchFilters f) {
    state = state.copyWith(filters: f);
  }

  void startSearchTimer() {
    final handle = telemetry.startTimer(TelemetryKeys.searchStarted, {
      'query': state.filters?.query ?? '',
      'category': state.filters?.category?.toString(),
      'campus': state.filters?.campus?.toString(),
    });
    state = state.copyWith(timerHandle: handle);
  }

  Future<void> search() async {
    state = state.copyWith(viewState: const ViewState.loading());
    final filters = state.filters ?? SearchFilters(); // no const para evitar conflictos

    final Result<List<ListingBase>> result = await _repo.search(filters);
    result.when(
      ok: (list) {
        state = state.copyWith(
          viewState: const ViewState.success(null),
          results: list,
        );
        final h = state.timerHandle;
        if (h != null) {
          telemetry.endTimer(h, extraProps: {
            'result_count': list.length,
          });
          state = state.copyWith(timerHandle: null);
        }
        telemetry.logEvent(TelemetryKeys.searchCompleted, {
          'result_count': list.length,
        });
      },
      err: (f) {
        state = state.copyWith(
          viewState: ViewState.error(f),
          errorMessage: f.message,
        );
      },
    );
  }
}

final searchVmProvider = StateNotifierProvider<SearchVM, SearchState>((ref) {
  final repo = ref.watch(searchRepositoryProvider);
  final telemetry = ref.watch(telemetryServiceProvider);
  return SearchVM(repo, telemetry);
});
