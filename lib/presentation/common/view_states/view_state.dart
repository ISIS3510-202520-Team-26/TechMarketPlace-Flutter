// lib/presentation/common/view_states/view_state.dart
/// Estado de vista simple: idle/loading/success/error.
import '../../../core/errors/failures.dart';

class ViewState<T> {
  final bool isLoading;
  final T? data;
  final Failure? error;

  const ViewState._({this.isLoading = false, this.data, this.error});

  const ViewState.idle() : this._();
  const ViewState.loading() : this._(isLoading: true);
  const ViewState.success(T d) : this._(data: d);
  const ViewState.error(Failure f, [T? previous]) : this._(data: previous, error: f);

  bool get hasError => error != null;
  bool get hasData => data != null && error == null;
}
