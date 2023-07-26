import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingCarousel3 extends StatelessWidget {
  const OnboardingCarousel3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: SvgPicture.asset(
            'assets/images/Group 1312.svg',
            width: 360,
            height: 360,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 48),
          child: Text(
            "Add Activity of your Pet",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "Record Activity",
            style: TextStyle(fontSize: 34, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
