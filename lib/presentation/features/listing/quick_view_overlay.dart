// lib/presentation/features/listing/quick_view_overlay.dart
import 'package:flutter/material.dart';

class QuickViewOverlay extends StatelessWidget {
  final String listingId;
  const QuickViewOverlay({super.key, required this.listingId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quick view')),
      body: Center(child: Text('Quick view for $listingId')),
    );
  }
}
