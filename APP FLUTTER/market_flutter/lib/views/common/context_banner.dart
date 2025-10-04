import 'package:flutter/material.dart';
import '../_mocks/mock_location.dart';
import 'theme.dart';

class ContextBanner extends StatefulWidget {
  const ContextBanner({super.key});

  @override
  State<ContextBanner> createState() => _ContextBannerState();
}

class _ContextBannerState extends State<ContextBanner> {
  String? _message;

  @override
  void initState() {
    super.initState();
    _resolve();
  }

  Future<void> _resolve() async {
    final now = DateTime.now();
    final hour = now.hour;
    if (hour >= 22 || hour < 6) {
      setState(() {
        _message = 'After hours – coordinate for tomorrow';
      });
      return;
    }
    final pos = await MockLocation.getCurrent();
    if (pos != null && _isNearCampus(pos)) {
      setState(() {
        _message = 'Near campus – sorted by proximity';
      });
    } else {
      setState(() {
        _message = 'Browse popular near you';
      });
    }
  }

  bool _isNearCampus(LatLng p) {
    const campus = LatLng(4.6381938, -74.0840464);
    final dLat = (p.lat - campus.lat);
    final dLon = (p.lon - campus.lon);
    final approxKm = (dLat * dLat + dLon * dLon).abs() * 111;
    return approxKm < 2.0;
  }

  @override
  Widget build(BuildContext context) {
    if (_message == null) return const SizedBox.shrink();
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: AppTheme.kDarkGreen.withOpacity(.06),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.info_outline, color: AppTheme.kDarkGreen, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _message!,
              style: const TextStyle(
                color: AppTheme.kDarkGreen,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
