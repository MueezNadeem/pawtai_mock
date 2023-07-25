import 'package:flutter/material.dart';

class SplashScreenLogo extends StatelessWidget {
  const SplashScreenLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/profile (1)@3x.png'),
    );
  }
}
