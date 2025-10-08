// lib/infra/persistence/hive_boxes.dart
import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';

/// Definición de nombres de boxes/keys para cache persistente.
/// Inicializa Hive de forma perezosa y abre los boxes declarados.
/// Idempotente y seguro ante llamadas concurrentes.
class HiveBoxes {
  static const kv = 'kv';
  static const listings = 'listings';
  static const users = 'users';
  static const filters = 'filters';

  static bool _initialized = false;
  static Future<void>? _initializing;

  /// Inicialización perezosa de Hive + apertura de boxes.
  static Future<void> ensureInitialized() async {
    if (_initializing != null) return _initializing!;
    if (_initialized) return;

    final completer = Completer<void>();
    _initializing = completer.future;

    try {
      await Hive.initFlutter();

      await Future.wait([
        _openBoxIfNeeded(kv),
        _openBoxIfNeeded(listings),
        _openBoxIfNeeded(users),
        _openBoxIfNeeded(filters),
      ]);

      _initialized = true;
      completer.complete();
    } catch (e, st) {
      _initialized = false;
      completer.completeError(e, st);
      rethrow;
    } finally {
      _initializing = null;
    }
  }

  static Future<void> _openBoxIfNeeded(String name) async {
    if (!Hive.isBoxOpen(name)) {
      await Hive.openBox(name);
    }
  }

  static Box get kvBox => Hive.box(kv);
  static Box get listingsBox => Hive.box(listings);
  static Box get usersBox => Hive.box(users);
  static Box get filtersBox => Hive.box(filters);
}
