import 'package:flutter/material.dart';
import '../common/theme.dart';
import '../common/app_bottom_nav.dart';
import '../common/round_icon_button.dart';
import '../_mocks/mock_telemetry.dart';
import '../market/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  DateTime? _enteredAt;
  bool _isNavigating = false;

  final _email = TextEditingController();
  final _pass = TextEditingController();

  @override
  void initState() {
    super.initState();
    _enteredAt = DateTime.now();
    MockTelemetry.send({'event_name': 'section_view_started', 'page': 'login'});
  }

  @override
  void dispose() {
    final ms = DateTime.now().difference(_enteredAt!).inMilliseconds;
    MockTelemetry.send(
        {'event_name': 'section_view_ended', 'page': 'login', 'duration_ms': ms});
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  void _login() {
    if (_isNavigating) return;
    setState(() => _isNavigating = true);
    MockTelemetry.send({'event_name': 'login_attempt'});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const DashboardScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kLightBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Login', style: AppTheme.header),
                  const Spacer(),
                  RoundIconButton(
                    icon: Icons.help_outline,
                    semanticsLabel: 'Help',
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
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
                child: ElevatedButton(
                  onPressed: _login,
                  child: const Text('Sign in'),
                ),
              ),
              const Spacer(),
              const AppBottomNav(currentIndex: 0, onTap: _noop),
            ],
          ),
        ),
      ),
    );
  }
}

void _noop(int _) {}
