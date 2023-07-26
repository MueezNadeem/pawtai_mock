import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';

class OnboardingNextButton extends StatefulWidget {
  const OnboardingNextButton(
      {required this.index, required this.buttonCarouselController, super.key});
  final CarouselController buttonCarouselController;
  final int index;
  @override
  State<OnboardingNextButton> createState() => _OnboardingNextButtonState();
}

class _OnboardingNextButtonState extends State<OnboardingNextButton> {
  late CarouselController controller;
  int index = 0;
  String buttontext = "Next";
  @override
  void initState() {
    index = widget.index;
    controller = widget.buttonCarouselController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 60,
          height: 60,
          child: FilledButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(bgColor())),
              onPressed: () {
                if (index == 1) {
                  setState(() {
                    buttontext = "Get Started";
                  });
                } else {
                  setState(() {
                    buttontext = "Next";
                    index += 1;
                  });
                }
                controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              },
              child: Text(
                buttontext,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              )),
        ),
      ),
    );
  }
}
