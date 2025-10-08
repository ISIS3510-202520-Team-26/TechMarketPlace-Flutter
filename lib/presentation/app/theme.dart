// lib/presentation/app/theme.dart
/// ThemeData base (claro/oscuro) + helpers de espaciado/radius.
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorSchemeSeed: const Color(0xFF246BFD),
  brightness: Brightness.light,
  useMaterial3: true,
);

final darkTheme = ThemeData(
  colorSchemeSeed: const Color(0xFF246BFD),
  brightness: Brightness.dark,
  useMaterial3: true,
);

const kRadius = 16.0;
const kPadding = 16.0;
