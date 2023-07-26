import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/onboarding/screens/onboarding_screen.dart';
import 'package:pawtai_mockup/features/onboarding/widgets/onboarding_carousel_1.dart';
import 'package:pawtai_mockup/features/onboarding/widgets/onboarding_carousel_2.dart';
import 'package:pawtai_mockup/features/onboarding/widgets/onboarding_carousel_3.dart';

class OnboardingCarousel extends StatefulWidget {
  OnboardingCarousel({required this.buttonCarouselController, super.key});
  CarouselController buttonCarouselController;

  @override
  State<OnboardingCarousel> createState() => _OnboardingCarouselState();
}

class _OnboardingCarouselState extends State<OnboardingCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        carouselController: widget.buttonCarouselController,
        items: const [
          OnboardingCarousel1(),
          OnboardingCarousel2(),
          OnboardingCarousel3()
        ],
        options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                OnboardingScreen().index = index;
              });
            },
            viewportFraction: 1,
            height: MediaQuery.of(context).size.height - 100,
            initialPage: 0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false));
  }
}
