// lib/presentation/app/localization/l10n.dart
/// Stub i18n listo para integrar ARB/intl más adelante.
/// Incluye delegates de Flutter para Material/Cupertino/Widgets.

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class S {
  const S();

  // --- Delegates & Locales ---
  static const LocalizationsDelegate<S> _delegate = _SDelegate();

  static List<LocalizationsDelegate<dynamic>> get localizationsDelegates => const [
        _delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('es'),
  ];

  static S of(BuildContext context) => Localizations.of<S>(context, S) ?? const S();

  // --- Strings de ejemplo ---
  String get appTitle => 'Tech Marketplace';
  String get search => 'Search';
  String get settings => 'Settings';
  String get insights => 'Insights';
  String get checkout => 'Checkout';
  String get chat => 'Chat';
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<S> load(Locale locale) async => const S();

  @override
  bool shouldReload(_SDelegate old) => false;
}
