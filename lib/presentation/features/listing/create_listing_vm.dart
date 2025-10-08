// lib/presentation/features/listing/create_listing_vm.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../common/view_states/view_state.dart';
import '../../../infra/analytics/telemetry_service.dart';
import '../../../infra/di/providers.dart';
import '../../../core/constants/telemetry_keys.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../../domain/entities/listing_base.dart';

class CreateListingState {
  final ViewState<void> saving;
  final String? lastPublishedId;

  const CreateListingState({this.saving = const ViewState.idle(), this.lastPublishedId});

  CreateListingState copyWith({ViewState<void>? saving, String? lastPublishedId}) =>
      CreateListingState(saving: saving ?? this.saving, lastPublishedId: lastPublishedId ?? this.lastPublishedId);
}

class CreateListingVM extends StateNotifier<CreateListingState> {
  final _repo;
  final TelemetryService telemetry;

  CreateListingVM(this._repo, this.telemetry) : super(const CreateListingState());

  Future<void> publish(ListingBase draft) async {
    state = state.copyWith(saving: const ViewState.loading());
    final Result<ListingBase> r = await _repo.create(draft);
    r.when(
      ok: (l) async {
        await telemetry.logEvent(TelemetryKeys.listingPublished, {'id': l.toString()});
        state = state.copyWith(saving: const ViewState.success(null), lastPublishedId: l.toString());
      },
      err: (f) => state = state.copyWith(saving: ViewState.error(f)),
    );
  }
}

final createListingVmProvider = StateNotifierProvider<CreateListingVM, CreateListingState>((ref) {
  final repo = ref.watch(listingRepositoryProvider);
  final telemetry = ref.watch(telemetryServiceProvider);
  return CreateListingVM(repo, telemetry);
});
