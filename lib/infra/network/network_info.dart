// lib/infra/network/network_info.dart
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

/// Estado de red simplificado para la app.
enum NetworkStatus { online, offline, constrained }

/// Wrapper de `connectivity_plus` que tolera diferencias entre versiones:
/// - Algunas devuelven `ConnectivityResult`
/// - Otras devuelven `List<ConnectivityResult>`
/// Este wrapper normaliza ambas a [NetworkStatus].
class NetworkInfo {
  final Connectivity _inner;

  NetworkInfo({Connectivity? connectivity}) : _inner = connectivity ?? Connectivity();

  /// Lee el estado actual de conectividad y lo mapea a [NetworkStatus].
  Future<NetworkStatus> getStatus() async {
    final dynamic r = await _inner.checkConnectivity();
    if (r is List<ConnectivityResult>) {
      return _mapFromList(r);
    } else if (r is ConnectivityResult) {
      return _mapFromSingle(r);
    } else {
      return NetworkStatus.offline;
    }
  }

  /// Emite cambios de conectividad ya mapeados a [NetworkStatus].
  Stream<NetworkStatus> get onStatusChanged {
    // Borramos genéricos para poder manejar ambas formas sin errores de tipos.
    final Stream raw = _inner.onConnectivityChanged as Stream;
    return raw.map((dynamic ev) {
      if (ev is List<ConnectivityResult>) return _mapFromList(ev);
      if (ev is ConnectivityResult) return _mapFromSingle(ev);
      return NetworkStatus.offline;
    });
  }

  /// Mapeo (unitario) de `ConnectivityResult` → `NetworkStatus`.
  /// - `none` => offline
  /// - `bluetooth` => constrained (heurística)
  /// - resto => online
  NetworkStatus _mapFromSingle(ConnectivityResult r) {
    switch (r) {
      case ConnectivityResult.none:
        return NetworkStatus.offline;
      case ConnectivityResult.bluetooth:
        return NetworkStatus.constrained;
      default:
        return NetworkStatus.online;
    }
  }

  /// Mapeo (lista) de `List<ConnectivityResult>` → `NetworkStatus`.
  /// - vacío o todos `none` => offline
  /// - todos `bluetooth` => constrained
  /// - cualquier otro => online
  NetworkStatus _mapFromList(List<ConnectivityResult> list) {
    if (list.isEmpty) return NetworkStatus.offline;
    if (list.every((r) => r == ConnectivityResult.none)) return NetworkStatus.offline;
    if (list.every((r) => r == ConnectivityResult.bluetooth)) return NetworkStatus.constrained;
    return NetworkStatus.online;
    }
}
