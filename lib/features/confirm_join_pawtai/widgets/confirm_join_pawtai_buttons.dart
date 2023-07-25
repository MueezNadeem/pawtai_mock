import 'package:flutter/material.dart';
import 'package:pawtai_mockup/common/colors/signin_color.dart';

class ConfirmJoinPawtaiButtons extends StatefulWidget {
  const ConfirmJoinPawtaiButtons({super.key});

  @override
  State<ConfirmJoinPawtaiButtons> createState() =>
      _ConfirmJoinPawtaiButtonsState();
}

class _ConfirmJoinPawtaiButtonsState extends State<ConfirmJoinPawtaiButtons> {
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
                onPressed: () {},
                child: const Text(
                  "Yes! Join it.",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 60,
            height: 60,
            child: FilledButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(buttonColorTransparent())),
                onPressed: () {},
                child: const Text(
                  "No! Don't Join.",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }
}
