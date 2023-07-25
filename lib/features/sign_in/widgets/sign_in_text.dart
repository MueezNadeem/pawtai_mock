import 'package:flutter/material.dart';

class SignInText extends StatelessWidget {
  const SignInText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Welcome Back!",
            style: TextStyle(
                letterSpacing: 0.2, fontSize: 18, color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Please, Log in.",
            style: TextStyle(
                letterSpacing: 0.2, fontSize: 32, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
