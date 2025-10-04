import 'package:flutter/material.dart';
import '../../models/commons/value_objects.dart';
import '../../models/commons/enums.dart';
import '../../models/catalog/listing.dart';
import '../../models/commons/money.dart';
import '../common/theme.dart';
import '../_mocks/mock_location.dart';
import '../_mocks/mock_telemetry.dart';
import '../_mocks/mock_repositories.dart';

class CreateListingScreen extends StatefulWidget {
  const CreateListingScreen({super.key});

  @override
  State<CreateListingScreen> createState() => _CreateListingScreenState();
}

class _CreateListingScreenState extends State<CreateListingScreen> {
  DateTime? _enteredAt;
  bool _isSaving = false;

  final _title = TextEditingController();
  final _desc = TextEditingController();
  final _price = TextEditingController(text: '199.99');

  LatLng? _pos;
  bool _locating = false;
  bool _permissionDenied = false;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'create_listing'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({'event_name': 'section_view_ended', 'page': 'create_listing', 'duration_ms': ms});
    _title.dispose();
    _desc.dispose();
    _price.dispose();
    super.dispose();
  }

  Future<void> _getLocation() async {
    setState(() { _locating = true; _permissionDenied = false; });
    final pos = await MockLocation.getCurrent();
    setState(() {
      _locating = false;
      if (pos == null) {
        _permissionDenied = true;
      } else {
        _pos = pos;
      }
    });
  }

  void _save() {
    if (_isSaving) return;
    setState(() => _isSaving = true);

    final cents = ((double.tryParse(_price.text.replaceAll(',', '.')) ?? 0) * 100).round();
    final listing = Listing(
      id: Uuid.from('new-${DateTime.now().millisecondsSinceEpoch}'),
      sellerId: Uuid.from('seller-1'),
      categoryId: MockRepo.categories().first.id,
      brandId: null,
      locationId: null,
      title: _title.text,
      description: _desc.text,
      price: Money(amountCents: cents, currency: CurrencyCode.from('USD')),
      condition: ListingCondition.used,
      quantity: 1,
      mediaCount: 0,
      attributes: const {},
      shippingOptions: const [],
      status: ListingStatus.active,
      visibility: ListingVisibility.public_,
      createdAt: DateTime.now().toUtc(),
      updatedAt: DateTime.now().toUtc(),
    );

    MockTelemetry.send({
      'event_name': 'listing_created',
      'listing_id': listing.id.asString,
      'context': {
        if (_pos != null) 'lat': _pos!.lat, if (_pos != null) 'lon': _pos!.lon,
        'has_location': _pos != null
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Listing created (mock)')),
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text('Create listing', style: TextStyle(color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(controller: _title, decoration: const InputDecoration(labelText: 'Title')),
          const SizedBox(height: 8),
          TextField(controller: _desc, decoration: const InputDecoration(labelText: 'Description'), maxLines: 3),
          const SizedBox(height: 8),
          TextField(controller: _price, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Price (USD)')),
          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton.icon(
                onPressed: _locating ? null : _getLocation,
                icon: const Icon(Icons.my_location),
                label: Text(_locating ? 'Getting location...' : 'Use GPS'),
              ),
              const SizedBox(width: 12),
              if (_pos != null) Text('Lat: ${_pos!.lat.toStringAsFixed(5)}, Lon: ${_pos!.lon.toStringAsFixed(5)}'),
              if (_permissionDenied) const Text('No permission (mock). Enter manually.'),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _isSaving ? null : _save,
              child: const Text('Publish'),
            ),
          )
        ],
      ),
    );
  }
}
