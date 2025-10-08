// lib/infra/location/device_location_service.dart
import 'dart:async';

import 'package:geolocator/geolocator.dart' as geo;
import 'package:permission_handler/permission_handler.dart' as ph;

import '../../domain/value_objects/campus.dart';

/// Servicio de ubicación del dispositivo.
/// - Solicita permisos (permission_handler)
/// - Lee la posición (geolocator)
/// - Resuelve opcionalmente a un Campus vía [campusResolver]
///
/// Requisitos de plataforma (añadir en proyecto nativo):
/// Android (AndroidManifest.xml):
///   <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
///   <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
/// iOS (Info.plist):
///   <key>NSLocationWhenInUseUsageDescription</key>
///   <string>Necesitamos tu ubicación para mejorar la experiencia en el campus.</string>
class DeviceLocationService {
  /// Permite mapear lat/lon a un campus conocido (si existe),
  /// por ejemplo, usando geofences o bounding boxes.
  final FutureOr<Campus?> Function(double lat, double lon)? campusResolver;

  DeviceLocationService({this.campusResolver});

  /// Devuelve el campus actual o null si no se puede determinar.
  Future<Campus?> currentCampus() async {
    try {
      // 1) Permisos (permission_handler)
      final granted = await _ensurePermission();
      if (!granted) return null;

      // 2) Servicios de ubicación habilitados
      final serviceEnabled = await geo.Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Opcional: geo.Geolocator.openLocationSettings();
        return null;
      }

      // 3) Permiso a nivel Geolocator (doble chequeo por si acaso)
      var gperm = await geo.Geolocator.checkPermission();
      if (gperm == geo.LocationPermission.denied) {
        gperm = await geo.Geolocator.requestPermission();
        if (gperm == geo.LocationPermission.denied) return null;
      }
      if (gperm == geo.LocationPermission.deniedForever) return null;

      // 4) Posición actual
      final pos = await geo.Geolocator.getCurrentPosition(
        desiredAccuracy: geo.LocationAccuracy.high,
      );
      final lat = pos.latitude;
      final lon = pos.longitude;

      // 5) Resolver a Campus (custom) o construir uno genérico
      if (campusResolver != null) {
        final resolved = await campusResolver!(lat, lon);
        if (resolved != null) return resolved;
      }

      return Campus(
        name: 'Campus(${lat.toStringAsFixed(3)},${lon.toStringAsFixed(3)})',
        lat: lat,
        lon: lon,
      );
    } catch (_) {
      // Cualquier excepción -> nulo seguro (no crashea)
      return null;
    }
  }

  /// Solicita permiso de localización "when in use".
  Future<bool> _ensurePermission() async {
    // Estado actual
    final status = await ph.Permission.locationWhenInUse.status;

    if (status.isGranted) return true;
    if (status.isPermanentlyDenied) {
      // Opcional: ph.openAppSettings();
      return false;
    }

    // Solicitud
    final req = await ph.Permission.locationWhenInUse.request();
    return req.isGranted;
  }
}
