// lib/presentation/common/widgets/context_banner.dart
import 'package:flutter/material.dart';

class ContextBanner extends StatelessWidget {
  final String text;
  const ContextBanner(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
