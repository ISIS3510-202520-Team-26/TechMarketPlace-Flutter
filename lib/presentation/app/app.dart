// lib/presentation/app/app.dart
/// App raíz: monta MaterialApp.router con go_router + temas.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';
import 'theme.dart';
import 'localization/l10n.dart' as i18n;

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Tech Marketplace',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
      localizationsDelegates: i18n.S.localizationsDelegates,
      supportedLocales: i18n.S.supportedLocales,
    );
  }
}
