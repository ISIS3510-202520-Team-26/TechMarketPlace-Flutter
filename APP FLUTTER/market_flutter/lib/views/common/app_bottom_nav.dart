import 'package:flutter/material.dart';
import 'theme.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const AppBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppTheme.navHeight,
      child: NavigationBar(
        selectedIndex: currentIndex,
        backgroundColor: AppTheme.kDarkGreen,
        indicatorColor: AppTheme.kDarkGreen.withOpacity(.12),
        elevation: 0,
        height: AppTheme.navHeight,
        onDestinationSelected: onTap,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: Colors.white),
            selectedIcon: Icon(Icons.home, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined, color: Colors.white),
            selectedIcon: Icon(Icons.search, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline, color: Colors.white),
            selectedIcon: Icon(Icons.chat_bubble, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline, color: Colors.white),
            selectedIcon: Icon(Icons.person, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.insights_outlined, color: Colors.white),
            selectedIcon: Icon(Icons.insights, color: Colors.white),
            label: '',
          ),
        ],
      ),
    );
  }
}
