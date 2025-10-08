// lib/presentation/features/checkout/checkout_vm.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../common/view_states/view_state.dart';
import '../../../infra/di/providers.dart';
import '../../../infra/analytics/telemetry_service.dart';
import '../../../core/constants/telemetry_keys.dart';
import '../../../core/utils/result.dart';
import '../../../domain/entities/order.dart';
import '../../../domain/value_objects/money.dart';
import '../../../domain/entities/escrow.dart';

class CheckoutState {
  final ViewState<CheckoutOrder> order;
  final EscrowStatus? escrowStatus;

  const CheckoutState({this.order = const ViewState.idle(), this.escrowStatus});

  CheckoutState copyWith({ViewState<CheckoutOrder>? order, EscrowStatus? escrowStatus}) =>
      CheckoutState(order: order ?? this.order, escrowStatus: escrowStatus ?? this.escrowStatus);
}

class CheckoutVM extends StateNotifier<CheckoutState> {
  final _paymentRepo;
  final _escrowRepo;
  final TelemetryService telemetry;

  CheckoutVM(this._paymentRepo, this._escrowRepo, this.telemetry) : super(const CheckoutState());

  Future<void> start(String listingId, Money amount) async {
    await telemetry.logEvent(TelemetryKeys.checkoutStarted, {
      'listing_id': listingId,
      'amount': amount.amount,
      'currency': amount.currency,
    });
    state = state.copyWith(
      order: ViewState.success(CheckoutOrder(
        id: 'o-$listingId',
        listingId: listingId,
        buyerId: 'me',
        amount: amount,
        status: 'started',
      )),
    );
  }

  Future<void> attemptPayment() async {
    final o = state.order.data;
    if (o == null) return;
    await telemetry.logEvent(TelemetryKeys.paymentAttempted, {'order_id': o.id, 'amount': o.amount.amount});
    final r = await _paymentRepo.attempt(o.id, o.amount.amount, o.amount.currency);
    r.when(
      ok: (paid) async {
        if (paid) {
          final statusR = await _escrowRepo.hold(o.id);
          statusR.when(
            ok: (_) => state = state.copyWith(escrowStatus: EscrowStatus.HELD),
            err: (_) => state = state.copyWith(escrowStatus: EscrowStatus.FAILED),
          );
        } else {
          state = state.copyWith(escrowStatus: EscrowStatus.FAILED);
        }
      },
      err: (_) => state = state.copyWith(escrowStatus: EscrowStatus.FAILED),
    );
  }

  Future<void> confirmEscrow() async {
    final o = state.order.data;
    if (o == null) return;
    final r = await _escrowRepo.release(o.id);
    r.when(
      ok: (_) async {
        await telemetry.logEvent(TelemetryKeys.escrowResult, {'order_id': o.id, 'result': 'released'});
        state = state.copyWith(escrowStatus: EscrowStatus.RELEASED);
      },
      err: (_) async {
        await telemetry.logEvent(TelemetryKeys.escrowResult, {'order_id': o.id, 'result': 'failed'});
        state = state.copyWith(escrowStatus: EscrowStatus.FAILED);
      },
    );
  }
}

final checkoutVmProvider = StateNotifierProvider<CheckoutVM, CheckoutState>((ref) {
  final pay = ref.watch(paymentRepositoryProvider);
  final esc = ref.watch(escrowRepositoryProvider);
  final telemetry = ref.watch(telemetryServiceProvider);
  return CheckoutVM(pay, esc, telemetry);
});
