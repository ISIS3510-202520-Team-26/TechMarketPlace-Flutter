// lib/main.dart
/// Punto de entrada de la app.
/// - Inicializa bindings.
/// - (Opcional) inicializa persistencia (HiveBoxes.ensureInitialized()).
/// - Emite `app_open` vía TelemetryService (vendor-agnóstica).
/// - Monta ProviderScope + App().

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Infra: persistencia (stub seguro) + DI (telemetría)
import 'infra/persistence/hive_boxes.dart';
import 'infra/di/providers.dart';

// UI raíz
import 'presentation/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Persistencia (stub: no abre nada si no usas Hive real).
  await HiveBoxes.ensureInitialized();

  // Emite "app_open" antes de montar la UI (contenedor efímero).
  await _emitAppOpen();

  // Captura global de errores (no-crashy; puedes enviar a Telemetry si quieres).
  runZonedGuarded(
    () => runApp(const ProviderScope(child: App())),
    (error, stack) {
      // TODO: enviar a crash reporting cuando esté cableado.
      debugPrint('Uncaught zone error: $error\n$stack');
    },
  );
}

/// Envía un evento de apertura de app usando el mismo TelemetryService
/// que consume la UI, pero con un ProviderContainer efímero.
Future<void> _emitAppOpen() async {
  final container = ProviderContainer();
  try {
    final telemetry = container.read(telemetryServiceProvider);
    await telemetry.logEvent('app_open', {
      'platform': _platformLabel(),
      'ts': DateTime.now().toIso8601String(),
    });
  } catch (_) {
    // No romper el arranque si no hay sink; el ConsoleSink ya es seguro.
  } finally {
    container.dispose();
  }
}

String _platformLabel() {
  if (kIsWeb) return 'web';
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      return 'android';
    case TargetPlatform.iOS:
      return 'ios';
    case TargetPlatform.macOS:
      return 'macos';
    case TargetPlatform.windows:
      return 'windows';
    case TargetPlatform.linux:
      return 'linux';
    case TargetPlatform.fuchsia:
      return 'fuchsia';
  }
}
