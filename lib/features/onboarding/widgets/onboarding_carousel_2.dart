import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingCarousel2 extends StatelessWidget {
  const OnboardingCarousel2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: SvgPicture.asset(
            'assets/images/walking_dog.svg',
            width: 360,
            height: 360,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 48),
          child: Text(
            "Add or Join a Pawtai",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "Create Your Pawtai",
            style: TextStyle(fontSize: 34, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
