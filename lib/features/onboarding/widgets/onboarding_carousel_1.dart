import 'package:flutter/material.dart';

class OnboardingCarousel1 extends StatelessWidget {
  const OnboardingCarousel1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Image.asset(
                width: 360, height: 360, 'assets/images/Group 1311.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 48),
            child: Text(
              "Register your Account",
              style: TextStyle(
                  fontSize: 18, color: Colors.white, letterSpacing: 0.4),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Free Registeration",
              style: TextStyle(fontSize: 34, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
