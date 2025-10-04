class LatLng {
  final double lat;
  final double lon;
  const LatLng(this.lat, this.lon);
}

class MockLocation {
  static Future<LatLng?> getCurrent() async {
    await Future.delayed(const Duration(milliseconds: 250));
    return const LatLng(4.6381938, -74.0840464);
  }
}
