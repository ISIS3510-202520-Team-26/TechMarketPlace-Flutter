// lib/infra/persistence/key_value_store.dart
import 'dart:async';

import 'package:hive/hive.dart';

import 'hive_boxes.dart';

/// KeyValueStore abstracto y dos implementaciones:
/// - InMemoryKeyValueStore: sólo memoria (tests/dev)
/// - HiveKeyValueStore: persistencia con Hive (prod/dev)
///
/// Nota importante sobre HiveKeyValueStore.get():
/// La lectura es síncrona *una vez* que el box está abierto. Si llamas get()
/// antes de inicializar Hive/abrir el box, devolverá null. Para garantizar
/// consistencia, llama a `await HiveBoxes.ensureInitialized()` en el arranque
/// (por ejemplo, en main) o construye el store y realiza al menos un set/clear
/// (ambas esperan a que el box esté listo) antes de hacer get().
abstract class KeyValueStore {
  Future<void> set(String key, Object? value);
  T? get<T>(String key);
  Future<void> clear(String key);
}

class InMemoryKeyValueStore implements KeyValueStore {
  final Map<String, Object?> _mem = {};

  @override
  Future<void> set(String key, Object? value) async {
    _mem[key] = value;
  }

  @override
  T? get<T>(String key) {
    final v = _mem[key];
    if (v is T) return v;
    return null;
  }

  @override
  Future<void> clear(String key) async {
    _mem.remove(key);
  }
}

/// Implementación sobre Hive.
/// Soporta tipos primitivos/Map/List que Hive maneja sin adapters.
/// Para tipos custom, registra TypeAdapters o serializa a String/JSON aguas arriba.
class HiveKeyValueStore implements KeyValueStore {
  final String boxName;

  HiveKeyValueStore({this.boxName = HiveBoxes.kv}) {
    // Dispara la inicialización en segundo plano para acelerar primeras lecturas.
    _ensureBoxReady();
  }

  Future<void> _ensureBoxReady() async {
    await HiveBoxes.ensureInitialized();
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox(boxName);
    }
  }

  Future<Box> _ready() async {
    await HiveBoxes.ensureInitialized();
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox(boxName);
    }
    return Hive.box(boxName);
  }

  @override
  Future<void> set(String key, Object? value) async {
    final b = await _ready();
    await b.put(key, value);
  }

  @override
  T? get<T>(String key) {
    // Lectura síncrona si el box ya está abierto; de lo contrario devolvemos null
    // (ver doc en cabecera para asegurar inicialización).
    if (!Hive.isBoxOpen(boxName)) return null;
    final b = Hive.box(boxName);
    final v = b.get(key);
    if (v is T) return v;
    return null;
  }

  @override
  Future<void> clear(String key) async {
    final b = await _ready();
    await b.delete(key);
  }
}
