import 'package:flutter/material.dart';

class AppTheme {
  static const kDarkGreen = Color(0xFF014D40);
  static const kLightBg  = Color(0xFFF7F8F8);

  static const chipSelected = Color(0xFF0C6B5C);

  static TextStyle get header => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w800,
        color: kDarkGreen,
      );

  static TextStyle get cardTitle =>
      const TextStyle(fontWeight: FontWeight.w800, fontSize: 16);
  static TextStyle get cardSubtitle =>
      TextStyle(color: Colors.grey.shade600, fontSize: 12);
  static TextStyle get price =>
      const TextStyle(fontWeight: FontWeight.w800, fontSize: 16);

  static const navHeight = 64.0;
}
