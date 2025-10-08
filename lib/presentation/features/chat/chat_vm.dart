// lib/presentation/features/chat/chat_vm.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../common/view_states/view_state.dart';
import '../../../infra/di/providers.dart';
import '../../../infra/analytics/telemetry_service.dart';
import '../../../core/constants/telemetry_keys.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../../domain/entities/chat.dart';

class ChatState {
  final ViewState<ChatThread> thread;
  final List<Message> messages;

  const ChatState({this.thread = const ViewState.idle(), this.messages = const []});

  ChatState copyWith({ViewState<ChatThread>? thread, List<Message>? messages}) =>
      ChatState(thread: thread ?? this.thread, messages: messages ?? this.messages);
}

class ChatVM extends StateNotifier<ChatState> {
  final _repo;
  final TelemetryService telemetry;

  ChatVM(this._repo, this.telemetry) : super(const ChatState());

  Future<void> start(String listingId) async {
    final r = await _repo.start(listingId);
    r.when(
      ok: (t) async {
        await telemetry.logEvent(TelemetryKeys.chatStarted, {'listing_id': listingId});
        state = state.copyWith(thread: ViewState.success(t));
        final streamR = await _repo.messages(t.id);
        streamR.when(
          ok: (msgs) => state = state.copyWith(messages: msgs),
          err: (f) => state = state.copyWith(thread: ViewState.error(f, state.thread.data)),
        );
      },
      err: (f) => state = state.copyWith(thread: ViewState.error(f)),
    );
  }

  Future<void> send(String text) async {
    final t = state.thread.data;
    if (t == null) return;
    await telemetry.logEvent(TelemetryKeys.chatMessageSent, {'thread_id': t.id});
    await _repo.send(t.id, Message(id: 'm-${DateTime.now().millisecondsSinceEpoch}', threadId: t.id, senderId: 'me', text: text, media: const [], sentAt: DateTime.now()));
  }

  Future<void> end({String? reason}) async {
    final t = state.thread.data;
    if (t == null) return;
    await telemetry.logEvent(TelemetryKeys.chatEnded, {'thread_id': t.id, 'reason': reason ?? 'manual'});
    await _repo.end(t.id, reason: reason);
  }
}

final chatVmProvider = StateNotifierProvider<ChatVM, ChatState>((ref) {
  final repo = ref.watch(chatRepositoryProvider);
  final telemetry = ref.watch(telemetryServiceProvider);
  return ChatVM(repo, telemetry);
});
