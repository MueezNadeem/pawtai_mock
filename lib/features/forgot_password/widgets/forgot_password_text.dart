import 'package:flutter/material.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Column(
        children: [
          Text(
            "Forgot your Password?",
            style: TextStyle(
                letterSpacing: 0.4, fontSize: 20, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Reset Here.",
              style: TextStyle(fontSize: 34, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
