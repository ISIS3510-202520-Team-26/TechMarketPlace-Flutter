import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  static const kDarkGreen = Color(0xFF014D40);
  static const kBg = Color(0xFFF7F8F8);

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      6,
      (_) => const _OrderItem(
        title: 'Logitech GT12',
        subtitle: 'Mouse Wireless',
        price: 345,
        status: 'Delivered',
      ),
    );

    return Scaffold(
      backgroundColor: kBg,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Header =====
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
              child: Row(
                children: [
                  const Text(
                    'Order',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: kDarkGreen,
                    ),
                  ),
                  const Spacer(),
                  _roundIcon(Icons.brightness_1_outlined),
                  const SizedBox(width: 8),
                  _roundIcon(Icons.brightness_1_outlined),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // ===== Filtros (chips) =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  _FilterChip(label: 'All Order', selected: true),
                  SizedBox(width: 8),
                  _FilterChip(label: 'Pending'),
                  SizedBox(width: 8),
                  _FilterChip(label: 'Processing'),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // ===== Lista =====
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
                itemBuilder: (_, i) => _OrderCard(item: items[i]),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemCount: items.length,
              ),
            ),
          ],
        ),
      ),

      // Bottom bar propia (como en el mock). Si prefieres no duplicar, puedes quitarla.
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1, // Order activo
        backgroundColor: kDarkGreen,
        indicatorColor: Colors.white12,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: Colors.white),
            selectedIcon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined, color: Colors.white),
            selectedIcon: Icon(Icons.receipt_long, color: Colors.white),
            label: 'Order',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
            selectedIcon: Icon(Icons.shopping_cart, color: Colors.white),
            label: 'My Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline, color: Colors.white),
            selectedIcon: Icon(Icons.person, color: Colors.white),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  static Widget _roundIcon(IconData icon) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      elevation: 1.5,
      child: SizedBox(
        width: 34,
        height: 34,
        child: Center(child: Icon(icon, size: 18, color: Colors.black54)),
      ),
    );
  }
}

// ===== Widgets =====

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  const _FilterChip({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: selected ? Colors.white : const Color(0xFF0C6B5C),
        ),
      ),
      selected: selected,
      onSelected: (_) {},
      selectedColor: const Color(0xFF0C6B5C),
      backgroundColor: Colors.white,
      shape: StadiumBorder(
        side: BorderSide(
          color: selected ? const Color(0xFF0C6B5C) : Colors.grey.shade300,
        ),
      ),
    );
  }
}

class _OrderItem {
  final String title;
  final String subtitle;
  final double price;
  final String status;
  const _OrderItem({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.status,
  });
}

class _OrderCard extends StatelessWidget {
  final _OrderItem item;
  const _OrderCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          // Imagen placeholder
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 12),

          // Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700)),
                const SizedBox(height: 2),
                Text(item.subtitle,
                    style: TextStyle(color: Colors.grey.shade600)),
                const SizedBox(height: 6),
                Text('\$${item.price.toStringAsFixed(0)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 16)),
              ],
            ),
          ),

          // Badge de estado
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF7D2D35), // vino/rojo oscuro como el mock
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Text(
              'Delivered',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
