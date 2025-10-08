// lib/presentation/app/router.dart
/// go_router + observador simple para medir dwell por pantalla.
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Rutas & telemetría
import '../../core/constants/app_routes.dart';
import '../../core/constants/telemetry_keys.dart';
import '../../infra/analytics/telemetry_service.dart';
import '../../infra/di/providers.dart';

// Screens
import '../features/dashboard/dashboard_screen.dart';
import '../features/search/search_screen.dart';
import '../features/listing/listing_detail_screen.dart';
import '../features/listing/quick_view_overlay.dart';
import '../features/chat/chat_screen.dart';
import '../features/checkout/checkout_screen.dart';
import '../features/insights/insights_dashboard_screen.dart';
import '../features/settings/settings_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final telemetry = ref.read(telemetryServiceProvider);
  final dwell = _RouteDwell(telemetry);

  return GoRouter(
    initialLocation: AppRoutes.root,
    observers: [dwell],
    routes: [
      GoRoute(
        path: AppRoutes.root,
        name: 'dashboard',
        builder: (ctx, st) => const DashboardScreen(),
        routes: [
          GoRoute(
            path: 'search',
            name: 'search',
            builder: (ctx, st) => const SearchScreen(),
          ),
          GoRoute(
            path: 'listing/:id',
            name: 'listing_detail',
            builder: (ctx, st) {
              final id = st.pathParameters['id']!;
              return ListingDetailScreen(listingId: id);
            },
            routes: [
              GoRoute(
                path: 'quick',
                name: 'listing_quick',
                builder: (ctx, st) {
                  final id = st.pathParameters['id']!;
                  return QuickViewOverlay(listingId: id);
                },
              ),
              GoRoute(
                path: 'chat',
                name: 'listing_chat',
                builder: (ctx, st) {
                  final id = st.pathParameters['id']!;
                  return ChatScreen(listingId: id);
                },
              ),
            ],
          ),
          GoRoute(
            path: 'checkout/:listingId',
            name: 'checkout',
            builder: (ctx, st) => CheckoutScreen(listingId: st.pathParameters['listingId']!),
          ),
          GoRoute(
            path: 'insights',
            name: 'insights',
            builder: (ctx, st) => const InsightsDashboardScreen(),
          ),
          GoRoute(
            path: 'settings',
            name: 'settings',
            builder: (ctx, st) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
});

/// Observador simple que mide dwell por ruta con TelemetryService.timers
class _RouteDwell extends NavigatorObserver {
  final TelemetryService telemetry;
  String? _handle;
  String? _currentName;

  _RouteDwell(this.telemetry);

  String _routeName(Route<dynamic>? r) {
    final settingsName = r?.settings.name ?? r?.settings.toString() ?? 'unknown';
    return settingsName;
  }

  void _start(Route<dynamic>? r) {
    final name = _routeName(r);
    _currentName = name;
    _handle = telemetry.startTimer(TelemetryKeys.sectionViewed, {'section': name});
  }

  Future<void> _end() async {
    if (_handle != null) {
      await telemetry.endTimer(_handle!, extraProps: {'section': _currentName});
      _handle = null;
      _currentName = null;
    }
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _end();
    _start(route);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _end();
    _start(previousRoute);
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    _end();
    _start(newRoute);
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
