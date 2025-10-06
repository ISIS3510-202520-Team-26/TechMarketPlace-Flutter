import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../_mocks/mock_telemetry.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  DateTime? _enteredAt;

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send(
        {'event_name': 'section_view_started', 'page': 'verify_email'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send({
      'event_name': 'section_view_ended',
      'page': 'verify_email',
      'duration_ms': ms
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Verify email',
            style: TextStyle(
                color: AppTheme.kDarkGreen, fontWeight: FontWeight.w800)),
      ),
      body: const Center(
        child: Text('We sent you a code – check your inbox.'),
      ),
    );
  }
}
