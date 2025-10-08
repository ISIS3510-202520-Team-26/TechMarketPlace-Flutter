// lib/infra/di/providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Core
import '../../core/errors/failures.dart';
import '../../core/utils/result.dart';

// Domain repos (interfaces)
import '../../domain/repositories/listing_repository.dart';
import '../../domain/repositories/search_repository.dart';
import '../../domain/repositories/category_repository.dart';
import '../../domain/repositories/chat_repository.dart';
import '../../domain/repositories/escrow_repository.dart';
import '../../domain/repositories/payment_repository.dart';
import '../../domain/repositories/price_suggestion_repository.dart';
import '../../domain/repositories/analytics_repository.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/repositories/user_repository.dart';
import '../../domain/repositories/feature_flag_repository.dart';
import '../../domain/repositories/device_location_repository.dart';

// Domain types usados por firmas
import '../../domain/entities/listing_base.dart';
import '../../domain/entities/chat.dart';
import '../../domain/entities/price_suggestion.dart';
import '../../domain/entities/user.dart';
import '../../domain/value_objects/money.dart';
import '../../domain/value_objects/campus.dart';
import '../../domain/entities/search_filters.dart';
import '../../domain/entities/category.dart'; // <-- Import necesario para CatalogCategory

// Infra services
import '../analytics/telemetry_service.dart';
import '../analytics/telemetry_sink.dart';
import '../analytics/sinks/console_telemetry_sink.dart';
import '../analytics/sinks/firebase_telemetry_sink.dart';
import '../analytics/timers.dart';
import '../network/network_info.dart';
import '../persistence/key_value_store.dart';
import '../feature_flags/feature_flag_service.dart';
import '../location/device_location_service.dart';

/// --------------------
/// Infra service providers
/// --------------------

final keyValueStoreProvider = Provider<KeyValueStore>((ref) {
  return InMemoryKeyValueStore();
});

final featureFlagServiceProvider = Provider<FeatureFlagService>((ref) {
  return FeatureFlagService(initial: {
    // Puedes activar Firebase telemetry desde runtime (Settings -> flags)
    'telemetry_firebase': false,
  });
});

/// Cliente opcional de Firebase Analytics. Mantener como `dynamic` para no
/// depender de la lib si no está en pubspec (no falla la compilación).
final firebaseAnalyticsClientProvider = Provider<dynamic>((ref) {
  // Si agregas firebase_analytics, inyecta aquí la instancia real.
  // Ej: return FirebaseAnalytics.instance;
  return null;
});

final telemetrySinkProvider = Provider<TelemetrySink>((ref) {
  final flags = ref.watch(featureFlagServiceProvider);
  final useFirebase = flags.isEnabled('telemetry_firebase');

  if (useFirebase) {
    final client = ref.watch(firebaseAnalyticsClientProvider);
    // Si no hay cliente, el sink es no-op (pero compile-safe)
    return FirebaseTelemetrySink(client: client);
  }
  return ConsoleTelemetrySink(namespace: 'market');
});

final timersProvider = Provider<Timers>((_) => Timers());

final telemetryServiceProvider = Provider<TelemetryService>((ref) {
  return TelemetryService(
    sink: ref.watch(telemetrySinkProvider),
    timers: ref.watch(timersProvider),
  );
});

final networkInfoProvider = Provider<NetworkInfo>((_) => NetworkInfo());

final deviceLocationServiceProvider = Provider<DeviceLocationService>((ref) {
  return DeviceLocationService(
    campusResolver: (lat, lon) async {
      // Implementación simple: siempre generamos un Campus legible.
      // Si luego quieres resolver por geofencing, reemplaza aquí.
      final name =
          'Campus(${lat.toStringAsFixed(3)},${lon.toStringAsFixed(3)})';
      return Campus(name: name, lat: lat, lon: lon);
    },
  );
});

/// --------------------
/// Repository providers
/// (stubs seguros por ahora; sustituye por *RepositoryImpl de /data cuando estén listos)
/// --------------------

class _Unwired implements Exception {
  final String what;
  _Unwired(this.what);
  @override
  String toString() => '_Unwired: $what';
}

final listingRepositoryProvider = Provider<ListingRepository>((ref) {
  return _ListingRepositoryStub();
});

final searchRepositoryProvider = Provider<SearchRepository>((ref) {
  return _SearchRepositoryStub();
});

final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return _CategoryRepositoryStub();
});

final chatRepositoryProvider = Provider<ChatRepository>((ref) {
  return _ChatRepositoryStub();
});

final escrowRepositoryProvider = Provider<EscrowRepository>((ref) {
  return _EscrowRepositoryStub();
});

final paymentRepositoryProvider = Provider<PaymentRepository>((ref) {
  return _PaymentRepositoryStub();
});

final priceSuggestionRepositoryProvider =
    Provider<PriceSuggestionRepository>((ref) {
  return _PriceSuggestionRepositoryStub();
});

final analyticsRepositoryProvider = Provider<AnalyticsRepository>((ref) {
  final telemetry = ref.watch(telemetryServiceProvider);
  return _AnalyticsRepositoryStub(telemetry);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return _AuthRepositoryStub();
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return _UserRepositoryStub();
});

final featureFlagRepositoryProvider = Provider<FeatureFlagRepository>((ref) {
  final flags = ref.watch(featureFlagServiceProvider);
  return _FeatureFlagRepositoryStub(flags);
});

final deviceLocationRepositoryProvider =
    Provider<DeviceLocationRepository>((ref) {
  final svc = ref.watch(deviceLocationServiceProvider);
  return _DeviceLocationRepositoryStub(svc);
});

/// --------------------
/// Stubs (dev-safe) — reemplaza con *RepositoryImpl de /data/
/// --------------------

class _ListingRepositoryStub implements ListingRepository {
  @override
  Future<Result<ListingBase>> getById(String id) async =>
      Err(UnknownFailure('ListingRepository not wired'));

  @override
  Future<Result<ListingBase>> create(ListingBase draft) async =>
      Err(UnknownFailure('ListingRepository not wired'));

  @override
  Future<Result<void>> toggleFavorite(String id) async =>
      Err(UnknownFailure('ListingRepository not wired'));
}

class _SearchRepositoryStub implements SearchRepository {
  @override
  Future<Result<List<ListingBase>>> search(SearchFilters filters) async =>
      Ok(const <ListingBase>[]); // vacío pero OK para UI básica
}

class _CategoryRepositoryStub implements CategoryRepository {
  @override
  Future<Result<List<CatalogCategory>>> all() async => Ok(const <CatalogCategory>[
        CatalogCategory.TEXTBOOKS,
        CatalogCategory.ELECTRONICS,
        CatalogCategory.PHONES,
        CatalogCategory.ACCESSORIES,
        CatalogCategory.SERVICES,
      ]);
}

class _ChatRepositoryStub implements ChatRepository {
  @override
  Future<Result<void>> end(String threadId, {String? reason}) async =>
      Err(UnknownFailure('ChatRepository not wired'));

  @override
  Future<Result<List<Message>>> messages(String threadId) async =>
      Ok(const <Message>[]);

  @override
  Future<Result<void>> send(String threadId, Message message) async =>
      Err(UnknownFailure('ChatRepository not wired'));

  @override
  Future<Result<ChatThread>> start(String listingId) async =>
      Err(UnknownFailure('ChatRepository not wired'));
}

class _EscrowRepositoryStub implements EscrowRepository {
  @override
  Future<Result<String>> dispute(String orderId, String reason) async =>
    Err(UnknownFailure('EscrowRepository not wired'));

  @override
  Future<Result<String>> hold(String orderId) async =>
    Err(UnknownFailure('EscrowRepository not wired'));

  @override
  Future<Result<String>> release(String orderId) async =>
    Err(UnknownFailure('EscrowRepository not wired'));
}

class _PaymentRepositoryStub implements PaymentRepository {
  @override
  Future<Result<bool>> attempt(String orderId, double amount, String currency) async =>
      Err(UnknownFailure('PaymentRepository not wired'));
}

class _PriceSuggestionRepositoryStub implements PriceSuggestionRepository {
  @override
  Future<Result<void>> accept(String listingId, Money price) async =>
      Err(UnknownFailure('PriceSuggestionRepository not wired'));

  @override
  Future<Result<PriceSuggestion>> suggest(
    String listingId,
    double base,
    String currency,
  ) async =>
      Err(UnknownFailure('PriceSuggestionRepository not wired'));
}

class _AnalyticsRepositoryStub implements AnalyticsRepository {
  final TelemetryService telemetry;
  _AnalyticsRepositoryStub(this.telemetry);

  @override
  Future<Result<void>> endTimer(String handleId,
      {Map<String, Object?> extraProps = const {}}) async {
    await telemetry.endTimer(handleId, extraProps: extraProps);
    return Ok(null);
  }

  @override
  Future<Result<void>> log(String name, Map<String, Object?> props) async {
    await telemetry.logEvent(name, props);
    return Ok(null);
  }

  @override
  Future<Result<String>> startTimer(
      String key, Map<String, Object?> baseProps) async {
    final h = telemetry.startTimer(key, baseProps);
    return Ok(h);
  }
}

class _AuthRepositoryStub implements AuthRepository {
  @override
  Future<Result<void>> signIn(String email, String password) async => Ok(null);

  @override
  Future<Result<void>> signOut() async => Ok(null);

  @override
  Future<Result<User?>> currentUser() async => Ok(null);
}

class _UserRepositoryStub implements UserRepository {
  @override
  Future<Result<User>> get(String id) async =>
      Err(UnknownFailure('UserRepository not wired'));

  @override
  Future<Result<void>> update(User user) async => Ok(null);
}

class _FeatureFlagRepositoryStub implements FeatureFlagRepository {
  final FeatureFlagService _svc;
  _FeatureFlagRepositoryStub(this._svc);

  @override
  Future<Result<bool>> isEnabled(String key) async => Ok(_svc.isEnabled(key));
}

class _DeviceLocationRepositoryStub implements DeviceLocationRepository {
  final DeviceLocationService _svc;
  _DeviceLocationRepositoryStub(this._svc);

  @override
  Future<Result<Campus?>> currentCampus() async =>
      Ok(await _svc.currentCampus());
}
