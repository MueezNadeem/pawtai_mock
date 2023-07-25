import 'package:flutter/material.dart';

class SignInLogo extends StatelessWidget {
  const SignInLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 200,
        height: 200,
        child: Image(image: AssetImage('assets/images/profile (1)@2x.png')));
  }
}
