import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/bg_color.dart';
import 'package:pawtai_mockup/features/add_pawtai/controller/add_pawtai_controller.dart';
import 'package:pawtai_mockup/features/join_pawtai/screens/join_pawtai_screen.dart';
import 'package:pawtai_mockup/features/onboarding/screens/onboarding_screen.dart';

import '../../../common/colors/button_colors.dart';
import '../../../common/widgets/or_spacer.dart';

class AddPawtaiButtons extends StatefulWidget {
  const AddPawtaiButtons(this.pawtaiNameController, {super.key});
  final TextEditingController pawtaiNameController;
  @override
  State<AddPawtaiButtons> createState() => _AddPawtaiButtonsState();
}

class _AddPawtaiButtonsState extends State<AddPawtaiButtons> {
  late User _user;
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      setState(() {
        _user = user!;
      });
    });
  }

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
                  AddPawtaiController().callAddPawtai(
                      widget.pawtaiNameController.text, _user.email!);
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
