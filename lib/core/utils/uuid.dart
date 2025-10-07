import 'dart:math';

class Uuid {
  static final Random _rng = Random();

  static String v4() {
    final bytes = List<int>.generate(16, (_) => _rng.nextInt(256));
    bytes[6] = (bytes[6] & 0x0F) | 0x40;
    bytes[8] = (bytes[8] & 0x3F) | 0x80;

    final sb = StringBuffer();
    for (final b in bytes) {
      sb.write((b & 0xFF).toRadixString(16).padLeft(2, '0'));
    }
    return sb.toString(); 
  }
}
