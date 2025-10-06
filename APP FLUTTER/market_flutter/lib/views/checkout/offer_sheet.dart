import 'package:flutter/material.dart';

class OfferSheet extends StatefulWidget {
  final int currentPriceCents;
  const OfferSheet({super.key, required this.currentPriceCents});

  @override
  State<OfferSheet> createState() => _OfferSheetState();
}

class _OfferSheetState extends State<OfferSheet> {
  late double _value;

  @override
  void initState() {
    super.initState();
    _value = widget.currentPriceCents / 100.0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Make an offer',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
            const SizedBox(height: 12),
            Text('\$${_value.toStringAsFixed(2)}'),
            Slider(
              min: 1,
              max: _value * 1.2,
              value: _value,
              onChanged: (v) => setState(() => _value = v),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context, (_value * 100).round()),
                child: const Text('Send offer'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
