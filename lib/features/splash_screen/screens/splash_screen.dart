import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/bg_color.dart';

import '../widgets/splash_screen_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      body: const Center(child: SplashScreenLogo()),
    );
  }
}
