import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/join_pawtai/screens/join_pawtai_screen.dart';
import 'package:pawtai_mockup/features/onboarding/screens/onboarding_screen.dart';

import '../../../common/colors/button_colors.dart';
import '../../../common/widgets/or_spacer.dart';

class AddPawtaiButtons extends StatelessWidget {
  const AddPawtaiButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 60,
            child: FilledButton(
                style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(10),
                    backgroundColor:
                        MaterialStatePropertyAll(buttonColorBlack())),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return OnboardingScreen();
                    },
                  ));
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                )),
          ),
        ),
        const OrSpacer(),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 60,
            child: FilledButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const JoinPawtaiScreen();
                    },
                  ));
                },
                child: Text(
                  "Join a Pawtai",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: bgColor()),
                )),
          ),
        ),
        const Text(
          "Already have a code? Join an existing Pawtai",
          style:
              TextStyle(letterSpacing: 0.2, color: Colors.white, fontSize: 16),
        )
      ],
    );
  }
}
