import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../_mocks/mock_telemetry.dart';

class OrderStatusScreen extends StatefulWidget {
  final String orderId;
  const OrderStatusScreen({super.key, required this.orderId});

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
  DateTime? _enteredAt;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'order_status', 'order_id': widget.orderId});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({'event_name': 'section_view_ended', 'page': 'order_status', 'order_id': widget.orderId, 'duration_ms': ms});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent, elevation: 0,
        title: const Text('Order status', style: TextStyle(color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _StepTile(icon: Icons.lock_clock, title: 'Escrow held', done: true),
          _StepTile(icon: Icons.local_shipping_outlined, title: 'Shipped', done: false),
          _StepTile(icon: Icons.check_circle_outline, title: 'Delivered', done: false),
        ],
      ),
    );
  }
}

class _StepTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool done;

  const _StepTile({required this.icon, required this.title, required this.done});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: done ? Colors.green : Colors.grey),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w600, color: done ? Colors.green : Colors.black)),
      trailing: done ? const Icon(Icons.check, color: Colors.green) : null,
    );
  }
}
