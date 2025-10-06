import 'package:flutter/material.dart';

import 'views/common/theme.dart';

import 'views/market/dashboard_screen.dart';
import 'views/market/search_screen.dart';
import 'views/chat/chat_list_screen.dart';
import 'views/profile/profile_screen.dart';
import 'views/insights/my_activity_screen.dart';

import 'views/market/listing_detail_screen.dart';
import 'views/market/create_listing_screen.dart';
import 'views/market/price_suggestion_sheet.dart';
import 'views/checkout/checkout_screen.dart';
import 'views/checkout/order_status_screen.dart';
import 'views/chat/chat_screen.dart';

import 'views/auth/login_screen.dart';
import 'views/auth/signup_screen.dart';
import 'views/auth/verify_email_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final base = ThemeData(useMaterial3: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tech Market',
      theme: base.copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.kDarkGreen),
        scaffoldBackgroundColor: AppTheme.kLightBg,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: AppTheme.kDarkGreen,
          titleTextStyle: TextStyle(
            color: AppTheme.kDarkGreen,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppTheme.kDarkGreen,
          indicatorColor: AppTheme.kDarkGreen.withOpacity(.12),
          height: AppTheme.navHeight,
          iconTheme: MaterialStateProperty.all(
            const IconThemeData(color: Colors.white),
          ),
        ),
      ),

      // 👇 Entramos por Login primero (login → signup → verify → /home)
      initialRoute: '/login',

      // Rutas con nombre
      routes: {
        // Auth flow
        '/login': (_) => const LoginScreen(),
        '/signup': (_) => const SignupScreen(),
        '/verify': (_) => const VerifyEmailScreen(),

        // Tabs principales
        '/home': (_) => const DashboardScreen(),
        '/search': (_) => const SearchScreen(),
        '/chats': (_) => const ChatListScreen(),
        '/profile': (_) => const ProfileScreen(),
        '/insights': (_) => const MyActivityScreen(),

        // Crear listing simple (sin argumentos)
        '/create-listing': (_) => const CreateListingScreen(),
      },

      // Rutas con argumentos
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/listing':
            final id = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => ListingDetailScreen(listingId: id),
            );
          case '/checkout':
            final listingId = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => CheckoutScreen(listingId: listingId),
            );
          case '/order':
            final orderId = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => OrderStatusScreen(orderId: orderId),
            );
          case '/chat':
            final chatId = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => ChatScreen(chatId: chatId),
            );
        }
        return null;
      },

      // Fallback si llega una ruta desconocida → volvemos a Login
      onUnknownRoute: (_) => MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      ),
    );
  }
}
