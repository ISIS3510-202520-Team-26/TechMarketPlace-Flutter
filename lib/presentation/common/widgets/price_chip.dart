// lib/presentation/common/widgets/price_chip.dart
import 'package:flutter/material.dart';
import '../../../domain/value_objects/money.dart';

class PriceChip extends StatelessWidget {
  final Money price;
  const PriceChip({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Chip(label: Text(price.formattedWithSymbol));
  }
}
