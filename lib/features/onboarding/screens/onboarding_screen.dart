import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/onboarding/widgets/onboarding_button.dart';
import 'package:pawtai_mockup/features/onboarding/widgets/onboarding_carousel.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});
  int index = 0;
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  CarouselController controller = CarouselController();
  late int index;

  @override
  void initState() {
    index = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnboardingCarousel(buttonCarouselController: controller),
              OnboardingNextButton(
                index: index,
                buttonCarouselController: controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}
