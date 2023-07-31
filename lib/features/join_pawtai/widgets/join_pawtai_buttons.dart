import 'package:flutter/material.dart';
import 'package:pawtai_mockup/features/add_pawtai/screens/add_pawtai_screen.dart';
import 'package:pawtai_mockup/features/confirm_join_pawtai/screens/confirm_join_pawtai_screen.dart';

import '../../../common/colors/button_colors.dart';
import '../../../common/widgets/or_spacer.dart';

class JoinPawtaiButtons extends StatefulWidget {
  const JoinPawtaiButtons({super.key});

  @override
  State<JoinPawtaiButtons> createState() => _JoinPawtaiButtonsState();
}

class _JoinPawtaiButtonsState extends State<JoinPawtaiButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
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
                      return const ConfirmJoinPawtaiScreen();
                    },
                  ));
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
        ),
        const OrSpacer(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 60,
            child: FilledButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(buttonColorTransparent())),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const AddPawtaiScreen();
                    },
                  ));
                },
                child: const Text(
                  "Add a Pawtai",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}
