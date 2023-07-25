import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            "Welcome to Pawtai!",
            style: TextStyle(
                fontSize: 18, letterSpacing: 0.4, color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            "Sign up here.",
            style: TextStyle(
                fontSize: 34, letterSpacing: 0.4, color: Colors.white),
          ),
        )
      ],
    );
  }
}
