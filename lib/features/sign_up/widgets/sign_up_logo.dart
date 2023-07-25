import 'package:flutter/material.dart';

class SignUpLogo extends StatelessWidget {
  const SignUpLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 150,
        width: 150,
        child: Image(image: AssetImage('assets/images/profile (1)@2x.png')));
  }
}
