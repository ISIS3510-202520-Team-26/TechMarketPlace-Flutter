import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../_mocks/mock_telemetry.dart';
import 'verify_email_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  DateTime? _enteredAt;
  bool _isNavigating = false;

  final _email = TextEditingController();
  final _pass = TextEditingController();

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'signup'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send(
        {'event_name': 'section_view_ended', 'page': 'signup', 'duration_ms': ms});
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  void _signup() {
    if (_isNavigating) return;
    setState(() => _isNavigating = true);
    MockTelemetry.send({'event_name': 'signup_attempt'});
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const VerifyEmailScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Create account',
            style: TextStyle(
              color: AppTheme.kDarkGreen,
              fontWeight: FontWeight.w800,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _email,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _pass,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: _signup, child: const Text('Next')),
            ),
          ],
        ),
      ),
    );
  }
}
