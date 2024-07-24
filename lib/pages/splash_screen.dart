import 'package:appdev_proj/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const BeneilLoginForm(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.secondary,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Text(
            'BINEIL',
            style: GoogleFonts.bodoniModa(
              fontSize: 128,
              fontWeight: FontWeight.w600,
              letterSpacing: -20,
              color: colorScheme.primary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
