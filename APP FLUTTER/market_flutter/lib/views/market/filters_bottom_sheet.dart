import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../_mocks/mock_telemetry.dart';

class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({super.key});

  @override
  State<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends State<FiltersBottomSheet> {
  bool price = true;
  bool category = true;
  bool brand = false;
  bool availability = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(left: 16, right: 16, top: 12, bottom: MediaQuery.of(context).viewInsets.bottom + 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 44, height: 4, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(2))),
            const SizedBox(height: 12),
            const Text('Filters', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18, color: AppTheme.kDarkGreen)),
            const SizedBox(height: 8),
            _row('Price', price, (v) => setState(() => price = v)),
            _row('Category', category, (v) => setState(() => category = v)),
            _row('Brand', brand, (v) => setState(() => brand = v)),
            _row('Availability', availability, (v) => setState(() => availability = v)),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  MockTelemetry.send({
                    'event_name': 'filter_applied',
                    'filters': {
                      'price': price, 'category': category, 'brand': brand, 'availability': availability
                    }
                  });
                  Navigator.pop(context);
                },
                child: const Text('Apply'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _row(String label, bool value, ValueChanged<bool> onChanged) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      title: Text(label),
      trailing: Switch(value: value, onChanged: onChanged),
      onTap: () => onChanged(!value),
    );
  }
}
