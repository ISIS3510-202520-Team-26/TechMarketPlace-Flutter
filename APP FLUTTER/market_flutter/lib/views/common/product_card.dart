// lib/views/common/product_card.dart
import 'package:flutter/material.dart';
import '../../models/catalog/listing.dart';
import '../_mocks/mock_repositories.dart';
import 'theme.dart';

class ProductCard extends StatelessWidget {
  final Listing listing;
  final VoidCallback onTap;
  final VoidCallback? onAdd;

  const ProductCard({
    super.key,
    required this.listing,
    required this.onTap,
    this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    final listingId = listing.id.toString();
    final photo = MockRepo.photos(listingId).firstOrNull?.url;
    final currency = _currencyCode(listing.price.currency);
    final priceStr =
        '\$${(listing.price.amountCents / 100).toStringAsFixed(2)} $currency';

    return Semantics(
      label: 'Product card ${listing.title}',
      button: true,
      child: InkWell(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: photo != null
                        ? Image.network(photo, fit: BoxFit.cover)
                        : Container(color: Colors.grey.shade200),
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    listing.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.cardTitle,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _conditionLabel(listing.condition),
                    style: AppTheme.cardSubtitle,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(priceStr, style: AppTheme.price),
                    const Spacer(),
                    Semantics(
                      label: 'Add to cart',
                      button: true,
                      child: InkWell(
                        onTap: onAdd,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.add, size: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}

String _conditionLabel(dynamic cond) {
  final raw = cond is Enum ? cond.name : cond?.toString();
  final s = (raw ?? '').toLowerCase();
  switch (s) {
    case 'new':
    case 'new_':
      return 'New';
    case 'used':
      return 'Used';
    case 'refurbished':
      return 'Refurbished';
    default:
      return '—';
  }
}

String _currencyCode(dynamic c) {
  if (c == null) return 'USD';
  final raw = c is Enum ? c.name : c.toString();
  final last = raw.split('.').last;
  return last.toUpperCase();
}
