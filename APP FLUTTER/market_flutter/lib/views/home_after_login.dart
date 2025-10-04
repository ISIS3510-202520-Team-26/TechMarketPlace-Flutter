import 'package:flutter/material.dart';
import 'cart_screen.dart';
import 'order_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  static const kDarkGreen = Color(0xFF014D40);
  static const kLightBg   = Color(0xFFF7F8F8);

  int _selectedCategory = 0;
  int _bottomIndex = 0;
  bool _isNavigating = false; // <- evita taps múltiples rápidos

  // Productos locales (mock)
  final List<_Product> _products = List.generate(
    8,
    (_) => const _Product(
      title: 'Logitech GT12',
      subtitle: 'Mouse Wireless',
      price: 345,
    ),
  );

  final List<String> _categories = const [
    'Technology',
    'Books',
    'Supplies',
    'Course Mat…',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== Header =====
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: Row(
                  children: [
                    const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: kDarkGreen,
                      ),
                    ),
                    const Spacer(),
                    _roundIcon(Icons.search),
                    const SizedBox(width: 10),
                    _roundIcon(
                      Icons.shopping_cart_outlined,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const CartScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // ===== Chips categorías =====
              SizedBox(
                height: 40,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    final selected = _selectedCategory == i;
                    return ChoiceChip(
                      label: Text(_categories[i]),
                      selected: selected,
                      onSelected: (_) => setState(() => _selectedCategory = i),
                      selectedColor: const Color(0xFF0C6B5C),
                      labelStyle: TextStyle(
                        color: selected ? Colors.white : const Color(0xFF0C6B5C),
                        fontWeight: FontWeight.w600,
                      ),
                      backgroundColor: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: selected
                              ? const Color(0xFF0C6B5C)
                              : Colors.grey.shade300,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemCount: _categories.length,
                ),
              ),

              const SizedBox(height: 16),

              // ===== "Popular Product" + Filter =====
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Text(
                      'Popular Product',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: kDarkGreen,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Filter',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // ===== Grid de productos =====
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.78,
                  ),
                  itemBuilder: (context, index) {
                    final p = _products[index];
                    return _ProductCard(product: p);
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      // ===== Bottom Navigation =====
      bottomNavigationBar: _BottomNav(
        currentIndex: _bottomIndex,
        onTap: (i) async {
          if (_isNavigating) return; // evita taps múltiples

          // Home (0) y Profile (3) solo cambian índice visual
          if (i == 0 || i == 3) {
            setState(() => _bottomIndex = i);
            return;
          }

          // Order (1)
          if (i == 1) {
            _isNavigating = true;
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OrderScreen()),
            );
            _isNavigating = false;
            if (mounted) setState(() => _bottomIndex = 0); // vuelve a Home
            return;
          }

          // My Cart (2) — abre el carrito desde el tab
          if (i == 2) {
            _isNavigating = true;
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CartScreen()),
            );
            _isNavigating = false;
            if (mounted) setState(() => _bottomIndex = 0);
            return;
          }
        },
      ),
    );
  }

  /// Icono redondo con ripple
  Widget _roundIcon(IconData icon, {VoidCallback? onTap}) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      elevation: 2,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 38,
          height: 38,
          child: Center(
            child: Icon(icon, color: kDarkGreen),
          ),
        ),
      ),
    );
  }
}

// ====== Card de producto ======
class _ProductCard extends StatelessWidget {
  final _Product product;
  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {}, // TODO: detalle producto
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
              Text(
                product.subtitle,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    '\$${product.price.toStringAsFixed(0)}',
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  ),
                  const Spacer(),
                  Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey.shade300),
                      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                    ),
                    child: const Icon(Icons.add, size: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ====== Modelo simple ======
class _Product {
  final String title;
  final String subtitle;
  final double price;
  const _Product({
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

// ====== Bottom Nav ======
class _BottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  static const kDarkGreen = Color(0xFF014D40);

  const _BottomNav({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      height: 64,
      indicatorColor: kDarkGreen.withOpacity(.12),
      backgroundColor: kDarkGreen,
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
    );
  }
}
