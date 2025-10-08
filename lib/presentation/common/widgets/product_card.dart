// lib/presentation/common/widgets/product_card.dart
/// Card genérico (no depende de detalles de ListingBase para evitar roturas).
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? trailing;
  final String? imageUrl;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
    this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: ListTile(
        onTap: onTap,
        leading: imageUrl != null
            ? Image.network(imageUrl!, width: 56, height: 56, fit: BoxFit.cover)
            : const Icon(Icons.shopping_bag),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: trailing != null ? Text(trailing!, style: const TextStyle(fontWeight: FontWeight.bold)) : null,
      ),
    );
  }
}
