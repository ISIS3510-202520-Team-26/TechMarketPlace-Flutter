// lib/presentation/features/listing/listing_detail_vm.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../common/view_states/view_state.dart';
import '../../../infra/di/providers.dart';
import '../../../core/utils/result.dart';
import '../../../core/errors/failures.dart';
import '../../../domain/entities/listing_base.dart';
import '../../../infra/analytics/telemetry_service.dart';
import '../../../core/constants/telemetry_keys.dart';

class ListingDetailState {
  final ViewState<ListingBase> listing;
  final bool isFavorite;

  const ListingDetailState({this.listing = const ViewState.idle(), this.isFavorite = false});

  ListingDetailState copyWith({ViewState<ListingBase>? listing, bool? isFavorite}) =>
      ListingDetailState(listing: listing ?? this.listing, isFavorite: isFavorite ?? this.isFavorite);
}

class ListingDetailVM extends StateNotifier<ListingDetailState> {
  final _repo;
  final TelemetryService telemetry;

  ListingDetailVM(this._repo, this.telemetry) : super(const ListingDetailState());

  Future<void> load(String id) async {
    state = state.copyWith(listing: const ViewState.loading());
    final Result<ListingBase> r = await _repo.getById(id);
    r.when(
      ok: (l) async {
        await telemetry.logEvent(TelemetryKeys.listingViewed, {'listing_id': id});
        state = state.copyWith(listing: ViewState.success(l));
      },
      err: (f) => state = state.copyWith(listing: ViewState.error(f)),
    );
  }

  Future<void> toggleFavorite(String id) async {
    final next = !state.isFavorite;
    state = state.copyWith(isFavorite: next);
    await _repo.toggleFavorite(id);
  }
}

final listingDetailVmProvider = StateNotifierProvider<ListingDetailVM, ListingDetailState>((ref) {
  final repo = ref.watch(listingRepositoryProvider);
  final telemetry = ref.watch(telemetryServiceProvider);
  return ListingDetailVM(repo, telemetry);
});
